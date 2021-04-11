class Movie < ApplicationRecord
  validates :title, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0,less_than_or_equal_to: 5,  only_integer: true }
  validates :genre, presence: true
end
