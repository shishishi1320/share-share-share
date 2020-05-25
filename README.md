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
生活していく上で必要な情報を共有するために作りました。

# DEMO
[![Image from Gyazo](https://i.gyazo.com/5a1aec0d2fb6689fa61e655e129bbc30.png)](https://gyazo.com/5a1aec0d2fb6689fa61e655e129bbc30)
[![Image from Gyazo](https://i.gyazo.com/38bc9fb4dd466847bac5b8b3f1093b6e.png)](https://gyazo.com/38bc9fb4dd466847bac5b8b3f1093b6e)

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
