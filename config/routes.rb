Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  get "uses/sign_in", :to => "devise/sessions#new"
  get "users/sign_out", :to => "devise/sessions#destroy"
  end
  root 'home#top'
  # get "/" => "home#top"
  get 'posts/index'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id" => "posts#show"
  get 'home/index'
  get 'home/authentication'
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