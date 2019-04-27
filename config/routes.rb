Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_for :users
  devise_for :users, :controllers => {
    :registrations => "users/registrations",
  }
  #devise_for :users, controllers: {
  # registrations: 'users/registrations'
  # }
  devise_scope :user do
  get "users/sign_in", :to => "devise/sessions#new"
  get "users/sign_out", :to => "devise/sessions#destroy"
  end
  root 'home#top'
  # get "/" => "home#top"
  get "member/:id/edit" => "member#edit"
  post "member/:id/update" => "member#update"
  get "home/user_info" => "home#user_info"
  get 'posts/index'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id" => "posts#show"
  get 'home/index'
  get 'home/authentication'
  get "profile/edit" => "profile#edit"
  post "profile/:id/update" => "profile#update"
  get "community/index" => "community#index"
  get "community/new" => "community#new"
  post "community/create" => "community#create"
  # if Rails.env.development?
  #   mount LetterOpenerWeb::Engine, at: '/letter_opener'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, :controllers => {
  # :registrations => 'users/registrations',
  # :sessions => 'users/sessions'
  # }

  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy"
  # end

end
