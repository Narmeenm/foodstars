class MealsController < ApplicationController

	def new
		@meal = Meal.new

	end

	def show
	   @meal = Meal.find(params[:id])
	end

	def create
		 @meal = Meal.new(meal_params)
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
    	params.require(:meal).permit(:name,:date,:location,:type_of_food,:price,:capacity)
    end
end
