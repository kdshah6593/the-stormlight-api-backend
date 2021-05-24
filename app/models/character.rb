class Character < ApplicationRecord
    has_many :books, through: :book_characters
end
