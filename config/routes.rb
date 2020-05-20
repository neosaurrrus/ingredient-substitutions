Rails.application.routes.draw do
  get 'substitutions/new'
  get 'substitutions/edit'
  get 'substitutions/show'
  get 'ingredients/show'
  get 'categories/index'
  get 'categories/show'
  get 'users/signup'
  get 'users/login'
  get 'users/logout'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
