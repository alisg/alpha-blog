Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles # only: [:show, :index, :new, :create, :edit, :update, :destroy] all this features are being called already by just adding resources :articles
end
