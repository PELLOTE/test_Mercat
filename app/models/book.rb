class Book < ApplicationRecord
  has_many :rent_books
  has_many :users, through: :rent_books

  validates :name, presence: true
end
