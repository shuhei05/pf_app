# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "aaa@aaa",
  password: "aaaaaa")

User.create!(
  email: "aaa@aaa",
  password: "aaaaaa",
  name: "aさん",
  postal_code: "111111",
  phone_number: "11111111111")

User.create!(
  email: "bbb@bbb",
  password: "bbbbbb",
  name: "bさん",
  postal_code: "222222",
  phone_number: "22222222222")

User.create!(
  email: "ccc@ccc",
  password: "cccccc",
  name: "cさん",
  postal_code: "333333",
  phone_number: "33333333333")


User.create!(
  email: "ddd@ddd",
  password: "dddddd",
  name: "dさん",
  postal_code: "444444",
  phone_number: "44444444444")

Product.create!(
  name: "塩",
  introduction: "1k")

Product.create!(
  name: "砂糖",
  introduction: "2k")

Product.create!(
  name: "ドライイースト",
  introduction: "500g")

Product.create!(
  name: "ミックス粉",
  introduction: "12k")

Product.create!(
  name: "湯種",
  introduction: "3k")

Product.create!(
  name: "蜂蜜",
  introduction: "800g")

Product.create!(
  name: "生クリーム",
  introduction: "1ℓ")

Product.create!(
  name: "牛乳",
  introduction: "1ℓ")

Product.create!(
  name: "バター",
  introduction: "500g")

Product.create!(
  name: "卵黄",
  introduction: "1ℓ")

Product.create!(
  name: "クリームチーズ",
  introduction: "500g")

Product.create!(
  name: "米油",
  introduction: "500g")

Product.create!(
  name: "いちごジャム",
  introduction: "100g")

Product.create!(
  name: "ブルーベリージャム",
  introduction: "100g")