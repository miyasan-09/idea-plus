# README

# アプリケーション名
    idea-plus
# アプリケーション概要

# URL
    https://idea-plus.onrender.com
# テスト用アカウント
    ・basic認証パスワード: 2222
    ・basic認証ID: admin
# 利用方法
    # アイディア募集をかけたいアイテムを投稿する
      ・トップページのヘッダーから企業新規登録を行う
      ・新規募集ボタンからアイテムを入力します
      ・アイテムの写真や詳細を入力したら募集をかけます
    # ユーザーがアイディアを投稿する
      ・トップページのヘッダーからユーザーの新規登録を行います
      ・トップページにアイテムの一覧が出ているので追加アイディアをしたいアイテムを選びます
      ・アイテムの詳細ページに遷移したら追加アイディアをコメントします
# アプリケーションを作成した背景

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計
    [![Image from Gyazo](https://i.gyazo.com/2c695f92170178db59c160f70cfee4e3.png)](https://gyazo.com/2c695f92170178db59c160f70cfee4e3)
# 画面遷移図
    [![Image from Gyazo](https://i.gyazo.com/aa6ef67e74168f8633cf09739648c86b.png)](https://gyazo.com/aa6ef67e74168f8633cf09739648c86b)
# 開発環境
    ・フロントエンド
    ・バックエンド
    ・インフラ
    ・テスト
    ・タスク管理

# ローカルでの動作方法

# 工夫したポイント

# 改善点

# 制作時間




# テーブル設計

# companies テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| company-name       | string | null: false |
| company-email      | string | null: false |
| encrypted_password | string | null: false |

### Association
has_many :ideas


## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :idea_users
- has_many :ideas, through: :room_users
- has_many :comments


## ideas テーブル

| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| idea-name   | string | null: false |
| title       | string | null: false |
| description | string | null: false |


### Association
- has_many :ideas_users
- has_many :users, through: :room_users
- has_many :comment


## ideas_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :idea
- belongs_to :user


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :idea
- belongs_to :user