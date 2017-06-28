class Area < ApplicationRecord
	has_many :connections
	has_many :posters, through: :connections
	belongs_to :location
end
