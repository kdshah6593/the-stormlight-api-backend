class Book < ApplicationRecord
    has_many :characters, through: :book_characters
end
