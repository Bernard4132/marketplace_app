Rails.application.routes.draw do
	
  resources :locations
  resources :categories
  devise_for :users

  resources :posters do
  	resources :comments
  end

  root to: "posters#index"
  match 'search', to: 'search#index', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
