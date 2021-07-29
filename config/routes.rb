Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  get 'top' =>'homes#top'
  root to: 'homes#top'
  get 'home/about'  =>'abouts#top'
  resources :books
  resources :users
end
