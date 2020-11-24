class Api::V1::ServicesController < Api::V1::BaseController

  

  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    # @stories = Story.all
    # render json: @stories #Just for testing
    @services = Service.all
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    render json: @service
  end

  def create
    @service = Service.new(service_params)
    @service.save
    render json: @service
  end

  def update
    @service = User.find(params[:id])
    @service.update(service_params)
    render json: @service
  end

  def destroy
    @service = Service.find(params[:id])
    render json: @service
    @service.destroy
  end

  private
  def user_params
    params.require(:service).permit(:price, :duration, :content, :area)
  end
  
end