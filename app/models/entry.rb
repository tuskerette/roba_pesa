class Entry < ApplicationRecord
	validates :kg, presence: true, numericality: true
end
