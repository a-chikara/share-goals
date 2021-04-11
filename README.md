# README

# アプリケーション名

share-goals

# アプリケーションの概要

・ユーザーのサインアップ、ログイン

・投稿ルームの作成、削除

・目標の投稿、削除、詳細

# 本番環境


# テスト用アカウント




# 目指した課題解決

・家族、友人、恋人との夢や目標の共有

・夢、目標の可視化（訪れたい国、取りたい資格など）

・コロナ禍でできなかった事柄を書き留めることで、将来見返したとき思い出し、行動することができる

# DEMO

サインアップページ

![d8c9c0c81c8ad7eaf15cfd1760dd5b61](https://user-images.githubusercontent.com/78467755/114298045-4b880a00-9aef-11eb-8bd7-72841bb9dcf7.jpeg)

サインインページ

d65dce10b67350c0d5f0764a06938995

トップページ

97f41131ead6cd35acc655db07e2ad65

・ヘッダーのユーザー名をクリックするとユーザー情報編集ページへ遷移
・「ルームを作成する」をクリックで新規ルーム作成ページへ遷移
・「テスト用」が記述されているところには作成したルーム名が表示され、クリックするとルームへ遷移

ユーザー情報編集ページ

e0d0ad40e103305cd15a24799c53addb

ルーム作成

74dc89e2fb4ae92370b38ba43418ebe5

投稿一覧

029c1fb7e4a2b0fa1276b66868469276

・ヘッダーのルーム削除ボタンをクリックでルーム削除
・投稿をクリックで投稿詳細ページへ遷移


新規投稿

424eeae68bd4c376d0afc117f1ca048d

投稿詳細

d8c9c0c81c8ad7eaf15cfd1760dd5b61

・削除ボタンをクリックで投稿削除


# 実装予定の機能

・達成優先度を星の数で表す

・キーワード検索

# 使用技術 (開発環境)

## バックエンド

Ruby,Ruby on Rails

##  フロントエンド

HTML,CSS

## 本番環境

Heroku

## ソース管理

Github

## テスト

RSpec

## エディタ

VScode

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :posts

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :posts

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## posts テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| memo        | text       | null: false                    |
| category    | string     | null: false                    |
| deadline    | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| room        | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user