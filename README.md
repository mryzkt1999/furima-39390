# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               | 
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| kana_last_name     | string | null: false               |
| kana_fist_name     | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_one  :purchase_record

## items テーブル

| Column                  | Type       | Options                       |
| ----------------------- | ---------- | ------------------------------|
| item_name               | string     | null: false                   |
| item_description        | text       | null: false                   |
| category_id             | integer    | null: false                   |
| item_condition_id       | integer    | null: false                   |
| shipping_fee_id         | integer    | null: false                   |
| prefecture_id           | integer    | null: false                   |
| shipping_lead_time_id   | integer    | null: false                   |
| price                   | integer    | null: false                   |
| user                    | references | null: false, foreign_key: true|


### Association

- belongs_to :user
- has_one  :purchase_record
- 
## shipping_destinations テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_cord     | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |
| adress          | string     | null: false                    |
| building        | string     |                                |
| phone_number    | string     | null: false                    | 
| purchase_record | references | null: false, foreign_key: true |


### Association

- belongs_to :purchase_record

## purchase_records テーブル

| Column       | Type       | Options                        |
| ------- -----| ---------- | ------------------------------ |
| item         | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :shipping_destination

