Rails.application.routes.draw do 
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as:'about'
  resources :post_images, only: [:new, :create, :edit, :update, :index, :show, :destroy] do 
    resources :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end 
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
