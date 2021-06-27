require 'rails_helper'

RSpec.describe UserNotice,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "発想元のお知らせ保存" do
	      expect(FactoryBot.build(:user_notice)).to be_valid
	    end
	  end
end