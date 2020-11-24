Rails.application.routes.draw do
  post '/login', to: 'login#login'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :show, :create, :update, :destroy ]
      resources :services, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
end
