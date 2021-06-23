require 'rails_helper'

RSpec.describe AdminNotice,"モデルに関するテスト", type: :model do
  describe "実際に保存してみる" do
  it "有効な投稿内容の場合は保存されるか" do
      expect(FactoryBot.build(:admin_notice)).to be_valid
    end
  end
  it "is valid with a information_title and information_body"
  it "is invalid without a information_title and information_body"
end