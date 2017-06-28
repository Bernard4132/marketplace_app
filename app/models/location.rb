class Location < ApplicationRecord
	has_many :taggings
	has_many :posters, through: :taggings
	has_many :areas
	geocoded_by :address
    after_validation :geocode, :if => :address_changed?
end
