Rails.application.routes.draw do


  resources :categories
  resources :products
  resources :packages
  resources :tags
  resources :usages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
