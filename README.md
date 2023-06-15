# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               | 
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| kana_name          | string | null: false               |
| birthday           | integer| null: false               |

### Association

- has_many :items
- has_many :sipping_destination
- belongs_to :purchase_record

## items テーブル

| Column              | Type       | Options                      |
| --------------------| ---------- | ---------------------------- |
| product_name        | string     | null: false                  |
| product_description | text       | null: false                  |
| category            | erum       | null: false                  |
| product_condition   | erum       | null: false                  |
| sipping_fee         | erum       | null: false                  |
| sipping_origin      | erum       | null: false                  |
| sipping_lead_time   | erum       | null: false                  |
| price               | integer    | null: false                  |
| user                | string     | null: false                  |
| purchase_record     | boolean    |                              |

### Association

- belongs_to :users
- belongs_to :sipping_destination
- belongs_to :purchase_record

## sipping_destination テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postal_cord  | integer    | null: false                    |
| prefecture   | erum       | null: false                    |
| city         | string     | null: false                    |
| adress       | integer    | null: false                    |
| building     | string     | null: false                    |
| phone_number | integer    | null: false                    | 
| item         | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |


### Association

- belongs_to :items
- belongs_to :users

## purchase_record テーブル

| Column       | Type       | Options                        |
| ------- -----| ---------- | ------------------------------ |
| item         | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :items
- belongs_to :users

