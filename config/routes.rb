Rails.application.routes.draw do
  resources :sessions, only:[ :new, :edit, :create]
  resources :categories 
  resources :ingredients
  resources :substitutions
  resources :users
  delete 'logout' => 'sessions#destroy'
  get 'welcome' => 'application#welcome'
  root 'application#welcome'
  get '/auth/google_oauth2/callback', :to => 'users#create_google'
  get '/auth/failure', :to => 'users#failure_google'





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
