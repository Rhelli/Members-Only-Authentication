class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }, allow_nil: false
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: false
  has_secure_password
end
