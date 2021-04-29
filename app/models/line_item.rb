class LineItem < ApplicationRecord
  belongs_to :product, optional: true, :dependent => :delete
  belongs_to :order
end
