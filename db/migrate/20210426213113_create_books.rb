class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :url
      t.string :isbn
      t.integer :hardcover_pages
      t.integer :paperback_pages
      t.integer :chapters
      t.string :book_type
      t.string :publisher
      t.integer :year_released

      t.timestamps
    end
  end
end
