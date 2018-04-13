class Trail < ApplicationRecord
  has_many :trail_trips
  has_many :trips, through: :trail_trips

  def total_number_of_trips
    trips.count
  end
end
