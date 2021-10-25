# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| favorite_movie     | string | null: false |
| image              | string | null: false |

### Association

- has_many :posts

## posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| aftertaste_id | integer    | null: false                    |
| impression    | text       | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
