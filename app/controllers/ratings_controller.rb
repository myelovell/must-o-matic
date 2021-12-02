class RatingsController < ApplicationController
    before_action :set_must
    before_action :authenticate_user!
    
    def create
        rating = Rating.new(ratings_params)
        rating.must = @must
        
        if rating.save
            redirect_to @must
        else
            render 'musts/show', status: :unprocessable_entity
        end
    end

    def destroy
        Rating.destroy(params[:id])
        respond_to do |format|
            format.html { redirect_to @must, notice: "Review was successfully destroyed." }
            format.json { head :no_content }
        end
    end


    private 

    def set_must
        @must = Must.find(params[:must_id])
    end

    def ratings_params
        params.required(:rating).permit(:comment, :rating)
    end
    


end
