class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_filter :set_search




  def set_search
    q = params[:q]
    @posters = Poster.search(title_or_description_cont: q).result
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :phone])
  end
end
