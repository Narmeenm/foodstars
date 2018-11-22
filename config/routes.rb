Rails.application.routes.draw do
	devise_for :users
	get 'dashboard', to: 'users#dashboard'
	root to: 'pages#home'
	resources :meals do
    	resources :bookings, only: [ :show, :create]
 	end
 	resources :bookings, only: [:show] do
 		member do 
 			post :confirm
 		end
	 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
