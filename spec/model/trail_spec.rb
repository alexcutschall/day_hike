require 'rails_helper'

describe Trail do
  describe 'instance methods' do
    it 'total_number_of_trips' do
      trail = Trail.create(name: "John Muir", address: "123 Main Street", length: 100)
      trail.trips.create(name: "A Trail", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail.trips.create(name: "Fancy Trail", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail.trips.create(name: "Lame Trail", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")

      expect(trail.total_number_of_trips).to eq(3)
    end
  end
end
