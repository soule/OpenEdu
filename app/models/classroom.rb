class Classroom < ApplicationRecord
	belongs_to :teacher
  has_many :assignments

  has_many :enrollments
  has_many :students, :through => :enrollments
end
