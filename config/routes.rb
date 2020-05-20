Rails.application.routes.draw do
  resources :categories 
  resources :ingredients
  resources :substitutions



  get 'users/signup'
  get 'users/login'
  get 'users/logout'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
