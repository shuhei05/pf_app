require 'rails_helper'

RSpec.describe Event,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "カレンダーの予定保存" do
	      expect(FactoryBot.build(:event)).to be_valid
	    end
	  end
end