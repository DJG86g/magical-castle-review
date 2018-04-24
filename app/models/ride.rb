class Ride < ApplicationRecord
validates :name, presence: true
validates :description, presence: true
belongs_to :park
has_many :reviews
has_many :users, through: :reviews
end
