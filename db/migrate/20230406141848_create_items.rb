class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :title,     null: false
      t.text       :concept,   null: false
      t.text       :feature,   null: false
      t.text       :merit
      t.text       :demerit
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
