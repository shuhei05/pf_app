require 'rails_helper'

RSpec.describe Share,"モデルに関するテスト", type: :model do
   describe '実際に保存してみる' do
	    it "共有事項保存" do
	      expect(FactoryBot.build(:admin_notice)).to be_valid
	    end
	  end
	    context "空白のバリデーションチェック" do
	    it "内容のバリデーションチェック" do
	      share = Share.new(share_information_title: 'hoge', share_information:'')
	      expect(share).to be_invalid
	      expect(share.errors[:share_information]).to include("を入力してください")
	    end
	 end
end