class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :link_to_buy, null: false
      t.text :story, null: false
      t.text :review, null: false
      t.integer :genre_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
