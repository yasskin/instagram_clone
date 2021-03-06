Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "images#index"

  resources :images do
    resources :comments
  end

  resources :users do
    resources :images
  end

  resources :images do
    resources :tags
  end

end
