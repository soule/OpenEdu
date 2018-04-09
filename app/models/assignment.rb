class Assignment < ApplicationRecord
	belongs_to :classroom
	has_many :questions
	has_many :submissions
end
