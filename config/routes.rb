Rails.application.routes.draw do
  get 'pages/home'
  #post "/bussinesses", to: "bussinesses#createmember

  devise_for :users 

  resources :bussinesses do
  	get 'add_user', to: 'bussinesses#add_users'
  	post 'add_user', to: 'bussinesses#createmember'
  end

  #resources :bussinesses do
  #	post 'add_user', to: 'bussinesses#createmember'
  #end
  	
  resources :tasks
   resources :team_members

  root to: "pages#home"

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
