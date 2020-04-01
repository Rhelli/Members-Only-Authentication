class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 130 }, allow_nil: false
  validates :body, presence: true, length: { maximum: 2000 }, allow_nil: false

  belongs_to :user

end
