class MealsController < ApplicationController

	def index
		@meals = Meal.all

	end

	def new
		@meal = Meal.new

	end

	def show
	   @meal = Meal.find(params[:id])
     @meals = Meal.where.not(latitude: nil, longitude: nil)

    @markers = @meals.map do |meal|
      {
        lng: meal.longitude,
        lat: meal.latitude,
        infoWindow: { content: render_to_string(partial: "/meals/map_window", locals: { meal: meal }) }

      }
    end
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
