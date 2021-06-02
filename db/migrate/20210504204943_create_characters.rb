class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.boolean :alive
      t.string :titles, array: true, default:[]
      t.string :aliases, array: true, default:[]
      t.string :occupation
      t.string :affiliations, array: true, default:[]
      t.boolean :shardbearer, default: false
      t.integer :birth_year
      t.integer :death_year, default: nil

      t.timestamps
    end
  end
end


# point of view books (associated)
# associated point of view books