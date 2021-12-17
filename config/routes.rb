Rails.application.routes.draw do
  get 'demands/new'
  get 'demands/create'
  devise_for :users
  root to: 'pages#home'
 resources :animals, only: [:index, :new,:create, :show, :destroy] do
   resources :demands, only: [:new, :create]
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
