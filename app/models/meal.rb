class Meal < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :host, foreign_key: :user_id, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user, dependent: :destroy
end
