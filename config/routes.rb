Rails.application.routes.draw do
  resources :sessions
  resources :categories 
  resources :ingredients
  resources :substitutions
  resources :users


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
