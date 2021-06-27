require 'rails_helper'

RSpec.describe Product,"モデルに関するテスト", type: :model do
   describe '実際に保存してみる' do
	    it "商品登録" do
	      expect(FactoryBot.build(:product)).to be_valid
	    end
	  end
end