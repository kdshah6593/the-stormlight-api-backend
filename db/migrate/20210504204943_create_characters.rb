class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.boolean :alive
      t.string :titles, array: true, default:[]
      t.string :aliases, array: true, default:[]
      t.string :father
      t.string :mother
      t.string :spouse
      t.string :occupation
      t.string :affiliations, array: true, default:[]

      t.timestamps
    end
  end
end


# Ethnicity/Race, Nationality/Nation, born, died, groups Knights Radiant Order, Shardbearer (true/false) books (associated), point of view books (associated)
# Race is associations
# figure out born/died with datetime type
# for knights radiant, maybe make boolean and then another column is dependent on that boolean being true or false
# associated character with books
# associated point of view books