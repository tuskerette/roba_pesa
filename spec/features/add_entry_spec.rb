require 'rails_helper'

RSpec.describe 'Add entry', type: :feature do
	it "adds an entry" do
		visit new_entry_path
		fill_in 'entry_kg', with: '60'
		click_on 'Create Entry'
		expect(page).to have_content("Entry saved!")
	end

	it "checks the period box" do
		visit new_entry_path
		fill_in 'entry_kg', with: '60'
		check 'entry_period'
		click_on 'Create Entry'
		expect(page).to have_content("Entry saved!")
	end

	it "tries to add an invalid entry" do
		visit new_entry_path
		click_on 'Create Entry'
		expect(page).to have_content("Kg can't be blank")
		expect(page).to have_content("Kg is not a number")
	end
end
