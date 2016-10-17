class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :age, numericality: {only_integer: true}
end
