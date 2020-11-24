class Api::V1::ReviewsController < Api::V1::BaseController
  def index
  end

  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def create
    @review = Review.new(review_params)
    @review.save
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    render json: @review
    @review.destroy
  end

  private
  def user_params
    params.require(:review).permit(:rating, :content)
  end

end
