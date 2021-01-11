# README

## アプリケーション名

Book-quick(ブックイック)

## アプリケーション概要

このアプリケーションで出来ることは、気になっている書籍の購入を手助けするアプリです。

## URL

## テスト用アカウント

## 利用方法

書籍の内容を把握した状態での購入を支援するアプリケーションです。

## 目指した課題解決

キャリアアップをしたいと考えているひとが、書店にいく時間がない、書籍の内容を知ってから安心して購入をしたい、書籍の購入で失敗をしたくないと考えているユーザーの課題を解決したいと考えました。

## 洗い出した要件

| 実装したい機能         | トップページ                       |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | サインイン・新規登録ページのボタン |
|                        | ログイン時にはサインアウトボタン   |
|                        | 新規投稿ボタン                     |
|                        | ジャンル検索ボタン                 |
|                        | フリーワード検索ボタン             |
|      (表示)            | 投稿の一覧表示                     |
|                        | 書籍名表示                         |
|                        | 書籍の画像表示                     |
|                        | 著者名の表示                       |
|                        | あらすじの表示                     |
|                        | 投稿者名表示                       |
|                        | アプリケーション名                 |
|                        | 検索機能                           |

| 実装したい機能         | サインインページ                   |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | ログインボタン                     |
|                        | 新規登録ボタン                     |
| (表示)                 | アプリケーション名                 |
|                        | メールアドレス入力欄               |
|                        | パスワード入力欄                   |

| 実装したい機能         | 新規登録ページ                     |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | 新規登録ボタン                     |
|                        | サインインボタン                   |
|     (表示)             | アプリケーション名                 |
|                        | 名前                               |
|                        | フリガナ                           |
|                        | ニックネーム                       |
|                        | パスワード                         |
|                        | パスワード(再入力)                 |
|                        | メールアドレス                     |
|                        | 生年月日                           |
|                        | 性別                               |

| 実装したい機能         | 新規投稿ページ                     |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | 投稿ボタン                         |
|                        | ジャンル検索ボタン                 |
|                        | フリーワード検索ボタン             |
|                        | サインアウトボタン                 |
|     (表示)             | 書籍名入力欄                       |
|                        | 書籍画像入力欄                     |
|                        | 著者名の入力欄                     |
|                        | あらすじ入力欄                     |
|                        | レビューの入力欄                   |
|                        | ジャンル入力欄                     |
|                        | ジャンル検索表示                   |
|                        | フリーワード検索表示               |
|                        | アプリケーション名                 |

| 実装したい機能         | 投稿詳細ページ                     |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | ジャンル検索ボタン                 |
|                        | フリーワード検索ボタン             |
|                        | コメント投稿ボタン                 |
|                        | サインアウトボタン                 |
|                        | 購入サイトへ遷移するボタン         |
|      (表示)            | 書籍名表示                         |
|                        | 書籍画像表示                       |
|                        | 著者名表示                         |
|                        | あらすじ表示                       |
|                        | レビュー表示                       |
|                        | 投稿者名表示                       |
|                        | 外部購入サイトへのリンク表示       |
|                        | ジャンル検索表示                   |
|                        | フリーワード検索表示               |
|                        | アプリケーション名                 |


| 実装したい機能         | 投稿編集ページ                     |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | ジャンル検索ボタン                 |
|                        | フリーワード検索ボタン             |
|                        | サインアウトボタン                 |
|                        | 投稿ボタン                         |
|     (表示)             | 書籍名入力欄                       |
|                        | 書籍画像入力欄                     |
|                        | 著者名の入力欄                     |
|                        | あらすじ入力欄                     |
|                        | レビューの入力欄                   |
|                        | ジャンル入力欄                     |
|                        | ジャンル検索表示                   |
|                        | フリーワード検索表示               |
|                        | アプリケーション名                 |


| 実装したい機能         | 投稿削除機能                       |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | ジャンル検索ボタン                 |
|                        | フリーワード検索ボタン             |
|                        | サインアウトボタン                 |
|                        | 投稿削除ボタン                     |
|     (表示)             | アプリケーション名                 |
|                        | ジャンル検索表示                   |
|                        | フリーワード検索表示               |


## 実装した機能についての説明

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| nickname           | string     | null: false       |
| name               | string     | null: false       |
| name_kana          | string     | null: false       |
| email              | string     | null: false       |
| encrypted_password | string     | null: false       |
| birth              | date       | null: false       |

### Associations

- has_many :books
- has_many :comments

## books テーブル

| Column            | Type         | Options           |
| ----------------- | ------------ | ----------------- |
| title             | string       | null: false       |
| link_to_buy       | string       | null: false       |
| story             | text         | null: false       |
| review            | text         | null: false       |
| genre_id          | integer      | null: false       |
| user              | references   | foreign_key: true |


### Associations

- belongs_to :user
- has_many :comments
- has_many :authors, through :book_authors
- has_many :book_authors

## authors テーブル

| Column           | Type           | Options         |
| ---------------- | -------------- | --------------- |
| name             | string         | null: false     |

### Associations

- has_many :books, through :book_authors
- has_many :book_authors

## book_authors テーブル

| Column           | Type           | Options                        |
| ---------------- | -------------- | ------------------------------ |
| book             | references     | null :false, foreign_key: true |
| author           | references     | null :false, foreign_key: true |

### Associations

- belongs_to :book
- belongs_to :author

## comments テーブル

| Column           | Type           | Options                        |
| ---------------- | -------------- | ------------------------------ |
| content          | string         |                                |
| user             | references     | null :false, foreign_key: true |
| book             | references     | null :false, foreign_key: true |

### Associations

- belongs_to :user
- belongs_to :book


