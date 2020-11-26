class Api::V1::BookingsController < Api::V1::BaseController

  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    if params[:user_id]
      @bookings = Booking.where(user_id: params[:user_id])
      elsif params[:service_id]
        @bookings = Booking.where(service_id: params[:service_id])
      else
        @bookings = Booking.all
      
    end
    render json: @bookings
    
  end

  def show
    @booking = Booking.find(params[:id])
    
  end

  def create
     @booking = Booking.new(booking_params)
     @booking.service = Service.find(params[:service_id])
     @booking.user = User.find(params[:user_id])
    @booking.save
    render json: @booking
   
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    render json: @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    render json: @booking
    @booking.destroy
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :location, :total, :user_id, :service_id)
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
