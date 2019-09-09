class Comment < ApplicationRecord
  belongs_to :post

  validates :username, presence: true, length: { minimum: 5 }
  validates :email, presence: true, length: { minimum: 5 }
  validates :comment, presence: true, length: { minimum: 5, maximum: 500 }
end
