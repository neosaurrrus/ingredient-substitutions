Rails.application.routes.draw do
  get 'welcome' => 'application#welcome'
  root 'application#welcome'

  resources :sessions
  resources :categories  do
    resources :ingredients
  end
  
  resources :substitutions
  resources :users, only:[:new, :show, :create, :edit]
  delete 'logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure_google'





  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
