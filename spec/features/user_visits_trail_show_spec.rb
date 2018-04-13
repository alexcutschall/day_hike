require 'rails_helper'

describe "user visits a trails page" do
  scenario "they see all of it's information" do
    trail = Trail.create(name: "John Muir", address: "123 Main Street", length: 100)
    trail.trips.create(name: "A Trail", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")
    trail.trips.create(name: "Fancy Trail", start_date: "2001-02-03T04:05:06+00:00", end_date: "2001-02-03T04:05:08+00:00")

    visit trail_path(trail)

    expect(page).to have_content(trail.name)
    expect(page).to have_content(trail.address)
    expect(page).to have_content(trail.length)
    expect(page).to have_content("Total Number of Trips: 2")
  end
end
