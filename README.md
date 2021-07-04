# Restaurant Management

## サイト概要
このアプリでは飲食店で働く方々が商品発注、業務連絡をこのアプリ内ですることが可能となっており、また受注者は受注管理ができるアプリとなっております。<br>
職場の端末にこのアプリを入れてもらうことにより、毎出勤時アプリの確認を必須とすると発注ミスや業務連絡漏れを削減するためのものです。<br>
発注者の方は商品の発注、在庫管理。共有事項を投稿、従業員間で業務的内容のやりとりができます。<br>
受注者の方は商品の受注管理、受注可能商品の管理ができます。

### サイトテーマ
飲食店にて発注管理&業務連絡アプリ、受注者の受注管理アプリ

### テーマを選んだ理由
以前飲食店で働いており、発注システムはあったが業務連絡、共有事項を伝える機能がLINEでしかなく、プライベートと分けたいという声があったため。<br>
以前の職場では発注した内容の詳細が確認できず発注ミスが少なからずありました。<br>
このアプリを職場の端末に入れることにより毎出勤時アプリの確認を必須とすると発注ミス、業務連絡漏れが削減できると思い作成に至りました。<br>
今回は以前パン屋で働いてたためパン屋イメージで商品のデータを作っております。

### ターゲットユーザ
主に飲食店で働く方々。また飲食店と提携している受注元の方々。

### 主な利用シーン
#### 発注者
- 商品の発注
- 商品の在庫管理
- 共有事項を投稿
- 従業員間で業務的なやりとりが必要な場合
#### 受注者
- 商品の受注確認
- 受注可能商品の管理

### テストユーザ
#### 発注者
- aさん：メールアドレス aaa@aaa,パスワード aaaaaa
- bさん：メールアドレス bbb@bbb,パスワード bbbbbb
- cさん：メールアドレス ccc@ccc,パスワード cccccc
- dさん：メールアドレス ddd@ddd,パスワード dddddd
#### 受注者
- aさん：メールアドレス aaa@aaa,パスワード aaaaaa

## 設計書
- ER図：https://app.diagrams.net/#G1yhjcJhrydmq20zw4r-AcK9F8vZlq07jn
- テーブル定義書：https://docs.google.com/spreadsheets/d/1scPZaVfa8VkgmMR-4LqWdUgj8xiaHLLd-cJFGhprWIs/edit#gid=514769212
- アプリケーション詳細設計：https://docs.google.com/spreadsheets/d/1aBSYYdLyipWL5WGxUrwqPX-cZjhZrIoPJeyd529afiM/edit#gid=563437082

## チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/10astIslC0Chfl2QMfH3LwkI2rQjZuWIpRzrNcmxJ2II/edit#gid=0

## 動作Gif
![circleAnimationMuvie](https://user-images.githubusercontent.com/79987446/122666937-213b8280-d1eb-11eb-9ecf-570620cc3430.gif)

## AWS構成図
![AWS構成図 (1)](https://user-images.githubusercontent.com/79987446/123262929-633e2e80-d533-11eb-82c0-72fc7abd215b.png)

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9