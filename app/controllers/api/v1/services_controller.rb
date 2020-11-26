class Api::V1::ServicesController < Api::V1::BaseController

  

    skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]


  def index
    # @stories = Story.all
    # render json: @stories #Just for testing
    if params[:user_id]
      @services = Service.where(user_id: params[:user_id])
    else
      @services = Service.all
    end
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    render json: @service
  end

  def create
    if params[:user_id]
      @service = Service.new(service_params)
      @service.user_id = params[:user_id]
      @service.save
    else
      @service = Service.new(service_params)
      @service.save
    end
    render json: @service
  end


  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    render json: @service
  end

  def destroy
    @service = Service.find(params[:id])
    render json: @service
    @service.destroy
  end

  private
  def service_params
    params.require(:service).permit(:price, :duration, :content, :area, :user_id)
  end
  
end