class User < ApplicationRecord
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
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

  def full_name
     "#{first_name} #{last_name}" if first_name || last_name
  end
end
