class CreateSurges < ActiveRecord::Migration[6.1]
  def change
    create_table :surges do |t|
      t.string :name
      t.string :knights_radiant_order1
      t.string :knights_radiant_order2

      t.timestamps
    end
  end
end
