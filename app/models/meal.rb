class Meal < ApplicationRecord
  belongs_to :host, foreign_key: :user_id, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user
end
