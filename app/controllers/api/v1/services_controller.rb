class Api::V1::ServicesController < Api::V1::BaseController
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
  end

  def update
  end

  def destroy
  end
  
end