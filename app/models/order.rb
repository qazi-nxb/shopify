class Admin::Order < ApplicationRecord
  belongs_to :user
  has_many :lineitems
end
