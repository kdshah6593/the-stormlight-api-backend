class AddLocationToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :location, null: false, foreign_key: true
  end
end
