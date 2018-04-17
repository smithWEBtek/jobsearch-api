Rails.application.routes.draw do
  
  root 'api/todos#index'

  delete 'api/users/:id/todos/:id/edit', to: 'api/todos#destroy'
  get 'api/users/:id/todos/:id/edit', to: 'api/todos#edit'
  patch 'api/users/:id/todos/:id/edit', to: 'api/todos#update'

	namespace :api do
		resources :steps
		resources :companies
		resources :jobs
		resources :contacts
		resources :users
		resources :todos
	end
end
