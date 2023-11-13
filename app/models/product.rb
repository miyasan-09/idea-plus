class Product < ApplicationRecord

  belongs_to :company
  has_many :comments
  has_one_attached :image

end
