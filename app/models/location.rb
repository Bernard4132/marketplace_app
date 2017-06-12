class Location < ApplicationRecord
	has_many :taggings
	has_many :posters, through: :taggings
	geocoded_by :address
    after_validation :geocode, :if => :address_changed?
end
