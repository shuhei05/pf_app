describe "User" do                    # User モデルについて記述（describe）する
  it "is valid with a name and email and password and postal_code and phone_number" # name と email と パスワード と 住所 と 電話番号を保持していることが正である
  it "is invalid without a name"      # name が無いと無効である
end