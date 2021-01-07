class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to reviews_index_path, notice: 'success'
    else
      render :new, notice: 'error'
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content)
  end
end
