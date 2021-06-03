class AddFatherMotherSpouseToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :father, index: true
    add_reference :characters, :mother, index: true
    add_reference :characters, :spouse, index: true
  end
end
