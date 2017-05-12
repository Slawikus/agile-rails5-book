class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, length: { minimum: 10, message: 'Title is too short' }
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be an URL for gif, jpg or png image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
