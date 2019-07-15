Rails.application.routes.draw do

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  devise_for :users
  get 'static_pages/about'
  root 'static_pages#home'

end
