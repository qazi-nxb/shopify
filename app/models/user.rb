class User < ApplicationRecord
  has_many :admin_orders, :class_name => 'Admin::Order'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  def self.fname_match(param)
    matches('first_name', param)
  end

  def self.lname_match(param)
    matches('last_name', param)
  end

  def self.matches(field,param)
    where("#{field} like ?", "%#{param}%")
  end
end
