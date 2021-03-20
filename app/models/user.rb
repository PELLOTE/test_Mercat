class User < ApplicationRecord
  has_many :rent_books
  has_many :books, through: :rent_books

  validates :username, :email, presence: true
  validates :email, uniqueness: true
end
