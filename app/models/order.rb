class Order < ApplicationRecord
  has_many :line_items, :dependent => :delete_all
  belongs_to :user

  def total
    self.line_items.sum(:total_price)
  end
end
