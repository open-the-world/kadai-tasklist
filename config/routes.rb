Rails.application.routes.draw do
  get 'taskposts/create'

  get 'taskposts/destroy'

   root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  resources :taskposts, only: [:create, :destroy]

end