Rails.application.routes.draw do
	resources :user_resources
	resources :studios
	devise_for :users

	root 'landing#index'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
