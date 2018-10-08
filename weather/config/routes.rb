Rails.application.routes.draw do
  	#root "main#index"
	get 'view', to: 'cities#view'
	get 'new', to: 'cities#new'
	post 'new', to: 'cities#create'
	get 'update', to: 'cities#update'
	post 'create', to: 'cities#create'
	post 'update', to: 'cities#update'
	
end
