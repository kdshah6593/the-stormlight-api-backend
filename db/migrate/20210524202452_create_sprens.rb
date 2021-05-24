class CreateSprens < ActiveRecord::Migration[6.1]
  def change
    create_table :sprens do |t|
      t.string :name

      t.timestamps
    end
  end
end
