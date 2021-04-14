class Admin::Lineitem < ApplicationRecord
  belongs_to :order
  belongs_to :admin_product, :class_name => 'Admin::Product'
end
