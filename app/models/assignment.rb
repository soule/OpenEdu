class Assignment < ApplicationRecord
	belongs_to :classroom
	has_many :questions
	has_many :submissions, :through => :questions

	def grade(student)
		student_submissions = submissions.find_all { |submission| submission.student_id == student.id }

		if student_submissions.count==0 
			return ""
		end
		scores = student_submissions.map { |s| (s.answer == s.question.correct_answer) ? 1 : 0 }

		return scores.sum.to_s + "/" + student_submissions.count.to_s
	end
end
