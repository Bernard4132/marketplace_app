Rails.application.routes.draw do
	
  resources :contactforms
  resources :areas
  resources :locations
  resources :categories

  devise_for :users
  resources :users, :only => [:show, :index]

 

  resources :posters do
    member { post :approve }
    member { post :favorite }
  	resources :comments
  end

  root to: "posters#index"
  match 'search', to: 'search#index', via: 'get'
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
  match 'aboutus', to: 'static_pages#aboutus', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
