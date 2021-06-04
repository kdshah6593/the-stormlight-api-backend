class Character < ApplicationRecord
    has_many :book_characters
    has_many :books, through: :book_characters

    belongs_to :race
    belongs_to :nation, class_name: "Location", foreign_key: "location_id"
    belongs_to :knights_radiant_order

    belongs_to :father, class_name: 'Character', foreign_key: 'father'
    belongs_to :mother, class_name: 'Character', foreign_key: 'mother'
    belongs_to :spouse, class_name: 'Character', foreign_key: 'spouse'

    # has_many :children, class_name: 'Character', foreign_key: {'mother_id', 'father_id'}
    # has_many :siblings, class_name: 'Character', foreign_key: 'siblings'
    # has_many :relatives, class_name: 'Character', foreign_key: 'relatives'

    has_many :povBooks, class_name: 'Pov'

end
