class Poster < ApplicationRecord
    
    markable_as :favorite
	belongs_to :user
	has_many :comments
	has_many :sections
    has_many :categories, :through => :sections
    has_many :connections
  has_many :areas, through: :connections
    has_many :taggings
	has_many :locations, :through => :taggings
	has_many :photos
    accepts_nested_attributes_for :photos, :allow_destroy => true


def all_categories
  self.categories.map(&:name).join(", ")
end

def all_locations
  self.locations.map(&:address).join(", ")
end


end
