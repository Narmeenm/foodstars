class PagesController < ApplicationController
  def home
  	@meal = Meal.all
  end
end
