class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name,   null: false, uniqueness: true

      t.timestamps
    end
  end
end
