class Trip < ApplicationRecord
  has_many :trail_trips
  has_many :trails, through: :trail_trips


  def total_hiking_distance
    trails.sum(:length)
  end

  def average_hiking_distance
    trails.average(:length)
  end

  def longest_hiking_distance
    trails.order(:length).last.length
  end

  def shortest_hiking_distance
    trails.order(:length).first.length
  end
end
