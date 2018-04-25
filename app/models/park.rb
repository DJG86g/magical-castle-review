class Park < ApplicationRecord
validates :name, presence: true
validates :address, presence: true
validates :city, presence: true
validates :state, presence: true
validates :zip, length: {maximum: 10}, presence: true
validates :description, presence: true
has_many :rides 
end
