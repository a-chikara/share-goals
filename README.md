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

![Animated GIF-downsized (2)](https://user-images.githubusercontent.com/78467755/114298896-8724d300-9af3-11eb-9dbf-036305b2f624.gif)

サインインページ

![Animated GIF-downsized (1)](https://user-images.githubusercontent.com/78467755/114298863-56dd3480-9af3-11eb-952c-8d9bf97840d9.gif)

トップページ

<img width="1436" alt="97f41131ead6cd35acc655db07e2ad65" src="https://user-images.githubusercontent.com/78467755/114298114-bdf8ea00-9aef-11eb-8c04-148bf95650cc.png">

・ヘッダーのユーザー名をクリックするとユーザー情報編集ページへ遷移
・「ルームを作成する」をクリックで新規ルーム作成ページへ遷移
・「テスト用」が記述されているところには作成したルーム名が表示され、クリックするとルームへ遷移

ユーザー情報編集ページ

<img width="1438" alt="e0d0ad40e103305cd15a24799c53addb" src="https://user-images.githubusercontent.com/78467755/114298127-cfda8d00-9aef-11eb-8eeb-8789ea52df97.png">

ルーム作成

<img width="1428" alt="74dc89e2fb4ae92370b38ba43418ebe5" src="https://user-images.githubusercontent.com/78467755/114298133-dcf77c00-9aef-11eb-87b7-699b86fef87e.png">

投稿一覧

<img width="1437" alt="029c1fb7e4a2b0fa1276b66868469276" src="https://user-images.githubusercontent.com/78467755/114298151-f5679680-9aef-11eb-9929-8629ab952371.png">

・ヘッダーのルーム削除ボタンをクリックでルーム削除
・投稿をクリックで投稿詳細ページへ遷移


新規投稿

![Animated GIF-downsized](https://user-images.githubusercontent.com/78467755/114298791-0239b980-9af3-11eb-8b00-6bc57b855258.gif)

投稿詳細

![d8c9c0c81c8ad7eaf15cfd1760dd5b61](https://user-images.githubusercontent.com/78467755/114298045-4b880a00-9aef-11eb-8bd7-72841bb9dcf7.jpeg)

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