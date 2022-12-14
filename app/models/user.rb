class User < ApplicationRecord
  has_secure_password
  # validaciones
  validates :email, :age, :password_digest, :type, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 100 }
  validates_inclusion_of :type, in: %w[Owner Employee] 
end
