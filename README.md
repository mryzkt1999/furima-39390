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
- has_one  :oder

## items テーブル

| Column                  | Type       | Options                       |
| ----------------------- | ---------- | ------------------------------|
| item_name               | string     | null: false                   |
| item_info               | text       | null: false                   |
| item_category_id        | integer    | null: false                   |
| item_sales_status_id    | integer    | null: false                   |
| item_shipping_fee_status_id    | integer    | null: false                   |
| item_prefecture_id      | integer    | null: false                   |
| item_scheduled_delivery_id   | integer    | null: false                   |
| item_price              | integer    | null: false                   |
| user                    | references | null: false, foreign_key: true|


### Association

- belongs_to :user
- has_one  :oder
- 
## adresses テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_cord     | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |
| house_number    | string     | null: false                    |
| building        | string     |                                |
| phone_number    | string     | null: false                    | 
| oder            | references | null: false, foreign_key: true |


### Association

- belongs_to :oder

## oders テーブル

| Column       | Type       | Options                        |
| ------- -----| ---------- | ------------------------------ |
| item         | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :address

