require 'rails_helper'

RSpec.describe Chat,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
	    it "チャット保存" do
        expect(FactoryBot.build(:chat)).to be_valid
	    end
	  end
	 context "空白のバリデーションチェック" do
	    it "メッセージのバリデーションチェック" do
	      chat = Chat.new(message: '')
	      expect(chat).to be_invalid
	      expect(chat.errors[:message])
	    end
	 end
end