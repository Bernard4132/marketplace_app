class UsersController < ApplicationController

def show
@user = User.find(params[:id])
@posters = current_user.posters
@favorites = current_user.favorite_posters
end

end
