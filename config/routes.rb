Rails.application.routes.draw do
  
  root 'api/todos#index'

	namespace :api do
		resources :steps
		resources :companies
		resources :jobs
		resources :contacts
		resources :users
		resources :todos
		resources :logs
	end
end
