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