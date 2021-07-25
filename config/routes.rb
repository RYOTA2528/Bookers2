Rails.application.routes.draw do
  devise_for :users
  get 'top' =>'homes#top'
  root to: 'homes#top'
  get 'home/about'  =>'abouts#top'
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
  end
  resources :users, only: [:index, :show, :edit, :update]
end
