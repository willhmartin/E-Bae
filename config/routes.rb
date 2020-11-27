Rails.application.routes.draw do
  post '/login', to: 'login#login'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :show, :create, :update, :destroy ] do
        resources :bookings, only: [ :index ] # Was told to delete yesterday, disagree
        # resources :services, only: [ :index, :create ]
      end
      resources :services, only: [ :index, :show, :create, :update, :destroy ] do
        resources :bookings, only: [ :create ]
      end
      resources :reviews, only: [ :index, :show, :create, :update, :destroy ]
      resources :bookings, only: [ :show, :update, :destroy ] do
        resources :reviews
      end
    end
  end
end

# def index
#     if params[:catering_id]
#       @reservations = Reservation.where(catering_id: params[:catering_id])
#     elsif params[:user_id]
#       @reservations = Reservation.where(user_id: params[:user_id])
#     else
#       @reservations = Reservation.all
#     end
#     render json: @reservations #Just for testing
#   end
