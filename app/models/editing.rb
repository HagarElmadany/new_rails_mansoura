class Editing < ApplicationRecord
  belongs_to :post
  belongs_to :editor
end
