Rails.application.routes.draw do
  resources :companies
  resources :options
  resources :deliveryoptions
  resources :bookings
  
  get 'all' => 'bookings#all', as: :all
  post 'cleanup' => 'bookings#cleanup', as: :cleanup
  post 'provide' => 'bookings#cleanup', as: :provide

  resources :users do
    collection { get :search, :request_reset, :reset_password }
    collection { post :request_reset, :reset_password }
  end
  get '/users/:id/reset_password/:onetimetoken(.:format)' => 'users#reset_password', as: 'reset'

  resources :sessions
  post 'logout' => 'sessions#destroy'

  get '/about' => 'application#about'

  root 'bookings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
