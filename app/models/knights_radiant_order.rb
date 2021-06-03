class KnightsRadiantOrder < ApplicationRecord
    has_many :characters, dependent: :destroy
end
