class Api::V1::ReviewsController < Api::V1::BaseController
skip_before_action :verify_authenticity_token, only: [ :create, :destroy ]


  def index
    if params[:booking_id]
      @review = Review.where(booking_id: params[:booking_id])
    else
      @review = Review.find(params[:id])
    end
    render json: @review
  end

  def show
    if params[:booking_id]
      @review = Review.where(booking_id: params[:booking_id])
    else
      @review = Review.find(params[:id])
    end
    render json: @review
  end

  def create
    if params[:booking_id]
      @review = Review.new(review_params)
      # @review.booking_id = params[:booking_id]
      @review.save
    else 
      @review = Review.new(review_params)
      @review.save      
  end
  render json: @review
end

  def destroy
    @review = Review.find(params[:id])
    render json: @review
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:rating, :content, :booking_id)
  end

end
