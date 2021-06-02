class Character < ApplicationRecord
    has_many :book_characters
    has_many :books, through: :book_characters
    belongs_to :race
    belongs_to :nation, :class_name => 'Location'
    belongs_to :knights_radiant_order
    has_one :father, :class_name => 'Character'
    has_one :mother, :class_name => 'Character'
    has_one :spouse, :class_name => 'Character'
    has_many :siblings, :class_name => 'Character'
    has_many :relatives, :class_name => 'Character'
    has_many :povBooks, :class_name => 'Pov'

end
