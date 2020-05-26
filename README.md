# README
# アプリ名　

share-share-share
# 概要
いろんな人が投稿した記事がみれる

新規登録すれば自分も投稿でき投稿するとおみくじが引ける

健康というカテゴリーにも行ける
# デプロイ先　
https://share-shaer-share.herokuapp.com
# 使用言語
ruby　javascript　html　haml scss
# フレームワーク
ruby on rails
# version
ruby 2.5.1

ruby on rails 5.0.7.2
# 制作背景(意図)
最終課題を通じて個人のスキルを磨くことはもちろんですが、それ以上に他人とのコミュニケーションによる、情報の共有が大切だと感じました。しかし、インターネットやメディアなどでは自分が欲しいと思っていない情報も多いため、生活や健康の役に立つ情報だけをまとめて、シェアできる物を作りたいと思い、このアプリを作成しようと思いました。投稿後に引けるおみくじはjavascriputに触れる機会が少なかったためアウトプットとして追加してみました。

# DEMO
[![Image from Gyazo](https://i.gyazo.com/a91161605607802b74a41653ab5a8d49.gif)](https://gyazo.com/a91161605607802b74a41653ab5a8d49)

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts
- has_many :healths
## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|cntent|string|null: false|
|user_id|integer|null: false|
### Association
- belong_to :users

## healthsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|cntent|string|null: false|
|user_id|integer|null: false|
### Association
- belong_to :users
# 今後実装したいもの
健康というカテゴリーだけでなく他の種類も作る

いいね機能

ユーザーマイページ
