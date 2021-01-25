# README

## :books: Book-quick(ブックイック)
#### 書籍の内容を把握した状態での購入を支援するアプリケーションです。

## :books: アプリケーション概要
![Book-quick](https://i.gyazo.com/5432cee49205939a2aef97aa5a68e9bf.jpg "Book-quick")




#### このアプリケーションは、気になっている書籍のあらすじや感想を共有し、効率的な購入を手助けするアプリです。
ベストセラーになっている書籍が、自分の得たい学びが書かれているとは限りません。気になる本の内容をより深く投稿・共有することで、効率よく学びを得ることを加速させます。

## :books: URL
+ https://book-quick-32497.herokuapp.com/

## :books: テスト用アカウント



## :books: 実装した機能についての説明

+ トップページから新規登録・ログインできます
+ ログイン状態でトップページに遷移します
+ 新規投稿は右下の投稿するマークをクリックします
+ 投稿完了後は一覧ページに戻ります
+ 投稿内容をクリックすると詳細ページへ遷移します
+ 投稿詳細ページではコメントを投稿することができます。
+ 検索フォームに著者名や書籍名を入力すると一致したものを表示することができます。


![Book-quick](https://i.gyazo.com/02903d84356124b9b233cc7587db8690.gif "Book-quick")




## :books: 目指した課題解決

キャリアアップをしたいと考えているひとが、書店にいく時間がない、書籍の内容を知ってから安心して購入をしたい、書籍の購入で失敗をしたくないと考えているユーザーの課題を解決したいと考えました。

## :books: 洗い出した要件

| 実装したい機能         | トップページ                       |
| ---------------------- | ---------------------------------- |
| 要件(ボタン)           | サインイン・新規登録ページのボタン |
|                        | ログイン時にはサインアウトボタン   |
|                        | 新規投稿ボタン                     |
|                        | ジャンル検索ボタン                 |
|                        | フリーワード検索フォーム           |
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
| author            | string       | null: false       |
| story             | text         | null: false       |
| review            | text         | null: false       |
| genre_id          | integer      | null: false       |
| user              | references   | foreign_key: true |


### Associations

- belongs_to :user
- has_many :comments


## comments テーブル

| Column           | Type           | Options |
| ---------------- | -------------- | ------- |
| content          | text           |         |
| user_id          | integer        |         |
| book_id          | integer        |         |

### Associations

- belongs_to :user
- belongs_to :book



## :books: 追加予定機能

+ ジャンル一覧からの検索機能
+ ECサイトへのリンク機能

## :books: ローカルでの動作方法

+ % git clone https://github.com/takashimayuusuke/book-quick.git
+ % cd book-quick
+ % bundle install
+ % rails db:create
+ % rails db:migrate
+ % rails s
+ 👉 http://localhost:3000



## :books: 開発環境
+ VScode
+ ruby 2.6.5
+ rails 6.0.0
+ mysql 5.6.50
+ javascript

