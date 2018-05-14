Rails.application.routes.draw do
  
  root 'api/companies#index'

	get 'api/backup', to: 'application#backup'

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
