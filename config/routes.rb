Rails.application.routes.draw do
  root 'users/index'
  
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show new create]
  resources :messages, only: %i[index show new create]
end
