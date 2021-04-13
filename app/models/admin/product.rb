class Admin::Product < ApplicationRecord
  has_many :admin_lineitems, :class_name => 'Admin::Lineitem'
end
