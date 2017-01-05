Rails.application.routes.draw do
    resources :sessions


    resources :users, only: [:create, :new]

    #get '/login' => 'sessions#new'
    post '/sessions' => 'sessions#create'
    #get 'users/new' => 'users#new', as: 'signup'
end
