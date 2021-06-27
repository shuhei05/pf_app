require 'rails_helper'

RSpec.describe CartItem,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "カートに保存" do
	      expect(FactoryBot.create(:cart_item)).to be_valid
	    end
	  end
end