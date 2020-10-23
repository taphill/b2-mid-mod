require 'rails_helper'

RSpec.describe 'amusment_parks/:id', type: :feature do
  describe 'content' do
    it 'has name and price' do
      park = create(:amusment_park, admission_price: 50.00)

      visit "amusment_parks/#{park.id}"
      expect(page).to  have_content(park.name)
      expect(page).to  have_content(park.admission_price)
    end

    xit 'has rides and average rating' do
      park = create(:amusment_park)
      # ride1 = create(:ride, thrill_rating: 1, amusment_park: park)
      ride2 = create(:ride, thrill_rating: 6, amusment_park_id: park.id)
      # ride3 = create(:ride, thrill_rating: 10, amusment_park_id: park.id)
      # park = AmusmentPark.create(name: 'Best Park')
      # ride1 = Ride.create(name: 'Whirly', thrill_rating: 1, amusment_park_id: park.id)

      visit "amusment_parks/#{park.id}"
      save_and_open_page
      expect(page).to  have_content(ride1.name)
      expect(page).to  have_content(ride2.name)
      expect(page).to  have_content(ride3.name)
    end
  end
end
