class Product < ApplicationRecord
  has_one_attached :avatar
  acts_as_taggable_on :tags
  #attr_accessor :tag_list

  include PgSearch::Model
  pg_search_scope :search, against: [:name, :description]
end
