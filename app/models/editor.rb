class Editor < ApplicationRecord
    has_many :editings
    has_many :posts, through: :editings
end
