class Book < ApplicationRecord
    has_many :characters, through: :book_characters
    has_many :povCharacters, :class_name => 'Pov'
end
