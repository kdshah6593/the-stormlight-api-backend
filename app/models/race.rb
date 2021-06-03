class Race < ApplicationRecord
    has_many :characters, dependent: :destroy
end
