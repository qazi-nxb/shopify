class Product < ApplicationRecord

  has_many :lineitems
  has_one_attached :avatar
end
