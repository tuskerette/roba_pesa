require 'rails_helper'

describe "Entry" do
	it "is valid" do
		entry = Entry.new(kg: 50.0)
  	expect(entry).to be_valid
	end

  it "is not valid" do
		entry = Entry.new(kg: nil)
  	expect(entry).to_not be_valid
	end
end
