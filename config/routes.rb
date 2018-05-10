Rails.application.routes.draw do
  
  root 'api/tasks#index'

	namespace :api do
		resources :steps
		resources :companies
		resources :jobs
		resources :contacts
		resources :users
		resources :tasks
		resources :logs
	end
end
