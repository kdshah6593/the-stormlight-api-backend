class CreateBookCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :book_characters do |t|
      t.references :book, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
