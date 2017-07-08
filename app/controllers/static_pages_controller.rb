class StaticPagesController < ApplicationController

def dashboard
    @posters1 = Poster.where(approved: false).all
    @category = Category.new
    @location = Location.new
    @categories = Category.all
    @locations = Location.all
end

def aboutus
	
end

end