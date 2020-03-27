class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :password, length: { min: 6 }
  has_secure_password
end
