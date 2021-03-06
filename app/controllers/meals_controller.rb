class MealsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show, :new]

	def index
	    if params[:query].present?
	      @meals = Meal.search_by_location_and_type_of_food(params[:query])
	    elsif
        current_user.present?
			   @meals = Meal.all - current_user.hosted_meals
      else
        @meals = Meal.all
	    end
	end

	def new
		@meal = Meal.new

	end

	def show
	   @meal = Meal.find(params[:id])

    @markers = [
      {
        lng: @meal.longitude,
        lat: @meal.latitude,
        infoWindow: { content: render_to_string(partial: "/meals/map_window", locals: { meal: @meal }) }
      }
    ]
	end

	def create
		 @meal = Meal.new(meal_params)
		 @meal.user_id = current_user.id
      if @meal.save
      	redirect_to meal_path(@meal)
      else

       render "new"
      end

	end

	private

	def set_params
		@meal = Meal.find(params[:id])

    end

    def meal_params
    	params.require(:meal).permit(:name,:date,:location,:type_of_food,:price,:capacity,:photo)
    end
end
