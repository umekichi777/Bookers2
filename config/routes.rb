Rails.application.routes.draw do


  resources :books, only: [:new, :create, :index, :show, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]

  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
