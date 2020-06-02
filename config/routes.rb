Rails.application.routes.draw do
  get 'welcome' => 'application#welcome'
  root 'application#welcome'

  resources :sessions, only:[ :new, :edit, :create]
  resources :categories 
  resources :ingredients
  resources :substitutions
  resources :users, only:[:new, :show]
  delete 'logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure_google'





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
