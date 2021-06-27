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
end