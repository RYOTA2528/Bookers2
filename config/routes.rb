Rails.application.routes.draw do
  devise_for :users
  get 'top' =>'homes#top'
  root to: 'homes#top'
  get 'home/about'  =>'abouts#top'
  
end
