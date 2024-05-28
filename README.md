# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| name                  | string | null: false |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false |


## Profiles テーブル

| Column                | Type       | Options     |
| --------------------- | ---------- | ----------- |
| user                  | references | null: false, foreign_key: true |
| goal                  | text       | null: false |
| username              | string     | null: false |

## posts テーブル

| Column                | Type       | Options     |
| --------------------- | ---------- | ----------- |
| user                  | references | null: false, foreign_key: true |
| workout_details       | text       | null: false |
| image_url             | text       |             |
| title                 | string     | null: false |


## comments テーブル

| Column                | Type       | Options     |
| --------------------- | ---------- | ----------- |
| user                  | references | null: false, foreign_key: true |
| post                  | references | null: false, foreign_key: true |
| content	              | text       | null: false |
