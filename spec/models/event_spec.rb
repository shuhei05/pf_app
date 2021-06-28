require 'rails_helper'

RSpec.describe Event,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "カレンダーの予定保存" do
	      expect(FactoryBot.build(:event)).to be_valid
	    end
	  end
	   context "空白のバリデーションチェック" do
	    it "タイトルのバリデーションチェック" do
	      event = Event.new(title: '', body:'hoge')
	      expect(event).to be_invalid
	      expect(event.errors[:title]).to include("を入力してください")
	    end
	    it "内容のバリデーションチェック" do
	      event = Event.new(title: 'hoge', body:'')
	      expect(event).to be_invalid
	      expect(event.errors[:body]).to include("を入力してください")
	    end
	 end
end