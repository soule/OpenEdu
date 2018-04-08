class EnrollmentsController < ApplicationController
	def create
		@enrollment = current_student.enrollments.build(classroom_id: params[:classroom_id])

		if @enrollment.save
			flash[:notice] = "You are now enrolled in this class"
			redirect_to root_path
		else
			flash[:notice] = "Unable to enroll in class"
			redirect_to back
		end

	end
	def update
	end
	def destroy
	end
end
