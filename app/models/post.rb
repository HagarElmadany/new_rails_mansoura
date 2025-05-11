class Post < ApplicationRecord
    belongs_to :creator, class_name: "Author"
    has_many :editings
    has_many :editors, through: :editings
end
