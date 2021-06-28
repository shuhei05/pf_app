require 'rails_helper'

RSpec.describe Product,"モデルに関するテスト", type: :model do
   describe '実際に保存してみる' do
	    it "商品登録" do
	      expect(FactoryBot.build(:product)).to be_valid
	    end
	  end
	  context "空白のバリデーションチェック" do
	    it "商品名のバリデーションチェック" do
	      product = Product.new(name: '', introduction:'hoge')
	      expect(product).to be_invalid
	      expect(product.errors[:name]).to include("を入力してください")
	    end
	    it "商品説明のバリデーションチェック" do
	      product = Product.new(name: 'hoge', introduction:'')
	      expect(product).to be_invalid
	      expect(product.errors[:introduction]).to include("を入力してください")
	    end
	 end
end