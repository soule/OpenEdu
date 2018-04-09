class Question < ApplicationRecord
  belongs_to :assignment
  has_many :submissions

  def current_student_submission(current_student)
  	submissions.find { |submission| submission.student_id == current_student.id }	
  end

end
