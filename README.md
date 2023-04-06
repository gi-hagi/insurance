# README

#　usersテーブル

| Column             | Type   | Options                   |
| ------------------ | -------| ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| birthday           | date   | null: false               |

### Association
* has_many :items
* has_many :comments

#　items テーブル

| Column            | Type       | Options                        |
| ----------------- | -----------| ------------------------------ |
| title             | string     | null: false                    |
| concept           | text       | null: false                    |
| feature           | text       | null: false                    |
| merit             | text       |                                |
| demerit           | text       |                                |
| user              | references | null: false, foreign_key: true |

### Association
- belongs_to :user
* has_many :like
* has_many :comment

# likes テーブル

| Column         | Type       | Options                        |
| -------------- | -----------| ------------------------------ |
| user           | references | null: false, foreign_key: true |
| item           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

# comments テーブル
| Column            | Type       | Options                        |
| ----------------- | -----------| ------------------------------ |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |
| item              | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item