require 'rails_helper'

RSpec.describe UserNotice,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "発想元のお知らせ保存" do
	      expect(FactoryBot.build(:user_notice)).to be_valid
	    end
	  end
	   context "空白のバリデーションチェック" do
	    it "titleのバリデーションチェック" do
	      user_notice = UserNotice.new(information_title: '', information_body:'hoge')
	      expect(user_notice).to be_invalid
	      expect(user_notice.errors[:information_title]).to include("を入力してください")
	    end
	    it "bodyのバリデーションチェック" do
	      user_notice = UserNotice.new(information_title: 'hoge', information_body:'')
	      expect(user_notice).to be_invalid
	      expect(user_notice.errors[:information_body]).to include("を入力してください")
	    end
	 end
end