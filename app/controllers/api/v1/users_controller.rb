class Api::V1::UsersController < Api::V1::BaseController
  def index
    # @stories = Story.all
    # render json: @stories #Just for testing
    
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
  end

  def update
  end

  def destroy
  end
  
end