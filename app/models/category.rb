class Category < ApplicationRecord
	belongs_to :user
	has_many :sections
	has_many :posters, through: :sections
end
