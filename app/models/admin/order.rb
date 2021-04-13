class Admin::Order < ApplicationRecord
  belongs_to :user
  has_many :admin_lineitems, :class_name => 'Admin::Lineitem'
end
