Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 

	resources :user_resources, :studios
	devise_for :users

	root 'landing#index'

	get '/login' => 'login#index'
	get '/join' => 'login#join'
end
