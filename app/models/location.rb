class Location < ApplicationRecord
    has_many :characters, dependent: :destroy, inverse_of: 'nation'
end
