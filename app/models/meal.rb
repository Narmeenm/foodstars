class Meal < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :host, foreign_key: :user_id, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user, dependent: :destroy
  mount_uploader :photo, PhotoUploader

    include PgSearch
  pg_search_scope :search_by_location_and_type_of_food,
    against: [ :location, :type_of_food ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
