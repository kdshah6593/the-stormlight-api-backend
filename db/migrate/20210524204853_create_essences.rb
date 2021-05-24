class CreateEssences < ActiveRecord::Migration[6.1]
  def change
    create_table :essences do |t|
      t.string :name
      t.integer :number
      t.string :number_name
      t.string :gemstone
      t.string :body_focus
      t.string :primary_divine_attribute
      t.string :secondary_divine_attribute
      t.string :soulcasting_properties, array: true, default: []

      t.timestamps
    end
  end
end
