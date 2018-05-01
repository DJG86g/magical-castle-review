class Review < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :rating, inclusion: 1..5
  belongs_to :user
  belongs_to :ride
end
