require 'rails_helper'

RSpec.describe Chat,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "チャット保存" do
	      expect(FactoryBot.build(:chat)).to be_valid
	    end
	  end
end