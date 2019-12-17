Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'authors#index'
  resources :authors, :books
  get 'author', to: 'authors#index'
  get "authors/new", to: "authors#new"
  get 'authors/:id', to: 'authors#show'
  post "authors", to: "authors#create"
  get "authors/:id/edit", to: "authors#edit", as: :author_edit
  patch "authors/:id", to: "authors#update"
  delete "authors/:id", to: "authors#destroy"

  get "books/new", to: "books#new"
  post "books", to: "books#create"
end
