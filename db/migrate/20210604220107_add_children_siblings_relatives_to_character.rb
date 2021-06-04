class AddChildrenSiblingsRelativesToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :children, :string, array: true, default: []
    add_column :characters, :siblings, :string, array: true, default: []
    add_column :characters, :relatives, :string, array: true, default: []
  end
end
