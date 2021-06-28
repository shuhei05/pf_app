require 'rails_helper'

RSpec.describe AdminNotice,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "受注元のお知らせ保存" do
	      admin = create(:admin)
        admin_notice = build(:admin_notice,admin_id: admin.id)
        admin_notice.valid?
        expect(admin_notice).to be_valid
	    end
	  end
	   context "空白のバリデーションチェック" do
	    it "titleのバリデーションチェック" do
	      admin_notice = AdminNotice.new(information_title: '', information_body:'hoge')
	      expect(admin_notice).to be_invalid
	      expect(admin_notice.errors[:information_title]).to include("を入力してください")
	    end
	    it "bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
	      admin_notice = AdminNotice.new(information_title: 'hoge', information_body:'')
	      expect(admin_notice).to be_invalid
	      expect(admin_notice.errors[:information_body]).to include("を入力してください")
	    end
	 end
end