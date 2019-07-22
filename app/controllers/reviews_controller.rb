class ReviewsController < ApplicationController

    def index
    end 

    def new
        @photographer = Photographer.find_by_id(params[:photographer_id])
        @review = @photographer.reviews.build 
    end

    def create
      @review = Review.create(review_params)
      if @review.save
      redirect_to review_path(@review)
      else 
        render :new
      end 
    end
    
    def show
        @review.photographer 
    end 

    private 
      def review_params
        params.require(:review).permit(:photographer_id, :stars, :title, :content)
      end 

end
