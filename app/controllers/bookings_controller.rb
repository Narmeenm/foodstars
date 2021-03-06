class BookingsController < ApplicationController
     before_action :set_meal, only: :create

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new
    @booking.meal = @meal
    @booking.user = current_user


    @booking.save
    redirect_to dashboard_path
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: true)

    redirect_to dashboard_path
  end

  private

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
