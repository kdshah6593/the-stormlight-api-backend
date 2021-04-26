class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :url
      t.string :isbn
      t.integer :pages
      t.string :publisher
      t.integer :year_released

      t.timestamps
    end
  end
end
