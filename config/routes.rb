Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'users/show'
  end

  namespace :admin do
    get 'users/new'
  end

  namespace :admin do
    get 'users/edit'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "users/new", as: "signup"
  resources :users
end
