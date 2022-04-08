Rails.application.routes.draw do
  get 'pages/home'
  get 'bussinesses/add_users'
  devise_for :users 

  resources :bussinesses
  resources :tasks

  root to: "pages#home"

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
