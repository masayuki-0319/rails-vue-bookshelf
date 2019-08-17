class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.string :genre, null: false

      t.timestamps
    end
  end
end
