require "rails_helper"

describe Trip do
  describe 'instance methods' do
    it 'total_hiking_distance' do
      trip = Trip.create(name: "John Muir", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail_1 = trip.trails.create(name: "The great one", address: "123 Main Street", length: 10)
      trail_2 = trip.trails.create(name: "The lame one", address: "123 Lame Street", length: 112)

      expect(trip.total_hiking_distance).to eq(122)
    end
    it 'average_hiking_distance' do
      trip = Trip.create(name: "John Muir", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail_1 = trip.trails.create(name: "The great one", address: "123 Main Street", length: 10)
      trail_2 = trip.trails.create(name: "The lame one", address: "123 Lame Street", length: 20)

      expect(trip.average_hiking_distance).to eq(15)
    end
    it 'longest_hiking_distance' do
      trip = Trip.create(name: "John Muir", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail_1 = trip.trails.create(name: "The great one", address: "123 Main Street", length: 10)
      trail_2 = trip.trails.create(name: "The lame one", address: "123 Lame Street", length: 20)

      expect(trip.longest_hiking_distance).to eq(20)
    end
    it 'shortest_hiking_distance' do
      trip = Trip.create(name: "John Muir", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail_1 = trip.trails.create(name: "The great one", address: "123 Main Street", length: 10)
      trail_2 = trip.trails.create(name: "The lame one", address: "123 Lame Street", length: 20)

      expect(trip.shortest_hiking_distance).to eq(10)
    end
  end
end
