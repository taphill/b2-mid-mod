require 'rails_helper'

RSpec.describe '/mechanics', type: :feature do
  describe 'content' do
    it 'has header' do
      visit '/mechanics'
      expect(page).to have_content('All Mechanics')
    end

    it 'can list all mechanics' do
      mechanic1 = create(:mechanic, years_of_experience: 10)
      mechanic2 = create(:mechanic, years_of_experience: 11)

      visit '/mechanics'
      save_and_open_page
      expect(page).to have_content(mechanic1.name)
      expect(page).to have_content(mechanic1.years_of_experience)
      expect(page).to have_content(mechanic2.name)
      expect(page).to have_content(mechanic2.years_of_experience)
    end
  end
end
