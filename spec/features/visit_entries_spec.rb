require 'rails_helper'

RSpec.describe 'Visit entry index', type: :feature do
	it "shows the list of entries" do
		entry = create(:entry)
		visit entries_path
		expect(page).to have_content("#{entry.created_at}")
		expect(page).to have_content("#{entry.kg}")
	end

	it "shows the line chart with the entries" do
		entry = create(:entry)
		visit entries_path
		expect(page).to have_selector(:id, "chart-1")
	end

	it "destroys an entry", js: true do
		entry = create(:entry)
		visit entries_path
		accept_confirm do
			click_link 'Destroy'
		end
		expect(page).not_to have_content(entry.kg)
	end
end
