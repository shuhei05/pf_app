require 'rails_helper'

RSpec.describe Share,"モデルに関するテスト", type: :model do
   describe '実際に保存してみる' do
	    it "共有事項保存" do
	      expect(FactoryBot.build(:admin_notice)).to be_valid
	    end
	  end
end