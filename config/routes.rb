Rails.application.routes.draw do

  devise_for :users

  get   'likes/like' => 'likes#like'
  get   'likes/unlike' => 'likes#unlike'
  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'


  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  get 'static_pages/about'
  root 'static_pages#home'

end
