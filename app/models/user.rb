class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :bookings, dependent: :destroy
   has_many :booked_meals, through: :bookings, source: :meal
   has_many :hosted_meals, class_name: 'Meal', dependent: :destroy

   def requests # Booking request for meals I own
   	Booking.joins(:meal).where('meals.user_id' => id).where(confirmed: false)
   end
end
