require 'rails_helper'

describe 'user visits the trips index' do
  describe 'they can access a trip show page' do
    scenario 'they see all that trips information' do
      trip = Trip.create(name: "John Muir", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
      trail_1 = trip.trails.create(name: "The great one", address: "123 Main Street", length: 10)
      trail_2 = trip.trails.create(name: "The lame one", address: "123 Lame Street", length: 20)

      visit trips_path
      click_on trip.name

      expect(current_path).to eq(trip_path(trip))
      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.address)
      expect(page).to have_content(trail_1.length)
      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_2.address)
      expect(page).to have_content(trail_2.length)
      expect(page).to have_content("Total Distance: 30")
      expect(page).to have_content("Average Distance: 15")
      expect(page).to have_content("Longest Distance: 20")
      expect(page).to have_content("Shortest Distance: 10")

    end
  end
end
