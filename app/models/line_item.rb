class LineItem < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :order
end
