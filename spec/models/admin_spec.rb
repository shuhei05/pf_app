describe "Admin" do                    # Admin モデルについて記述（describe）する
  it "is valid with a name and email and password and postal_code and phone_number" # email と パスワードを保持していることが正である
  it "is invalid without a email and password"      # email passwordが無いと無効である
end