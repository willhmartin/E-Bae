class Api::V1::StoriesController < Api::V1::BaseController
  def index
    @stories = Story.all
    render json: @stories #Just for testing
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
  
end