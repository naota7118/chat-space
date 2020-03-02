## ChatSpace DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|index: true, null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
### Association
_ has_many :posts
_ has_many :groups, through:  :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|
|chatmembername|string|null: false|
### Association
_ has_many :posts
_ has_many :users, through:  :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|integer|null: false|
|image|integer|null: false|
### Association
- belongs_to :group
- belongs_to :user

# README

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
