class Api::V1::UsersController < Api::V1::BaseController
   
skip_before_action :verify_authenticity_token, only: [:create]

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    render json: @user
    @user.destroy
  end
  
private
  def user_params
    params.require(:user).permit(:name, :role, :gender, :age)
  end
end