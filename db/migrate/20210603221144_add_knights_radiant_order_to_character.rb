class AddKnightsRadiantOrderToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :knights_radiant_order, null: false, foreign_key: true
  end
end
