Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'authors#index'
  resources :authors
  get 'author', to: 'authors#index'
end
