class Product < ApplicationRecord
  has_one_attached :avatar
  acts_as_taggable_on :tags

end
