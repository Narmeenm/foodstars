class BookingsController < ApplicationController
     before_action :set_meal, :set_user


  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.meal = @meal
    @booking.user = @user


    if @booking.save
      redirect_to meal_path(@meal)
    else
      render :new
    end

  end

  private

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
