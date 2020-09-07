# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :articles
  resources :books, only: [:show, :index, :new, :create]
  root 'pages#home'
  get 'about', to: 'pages#about'
end
