class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @question = Question.find(params[:question_id])
    @submissions = @question.submissions
    
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @question = Question.find(params[:question_id])


    @submission = @question.submissions.build
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @question = Question.find(params[:question_id])

    @submission = @question.submissions.build(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to classroom_assignment_questions_path(@question.assignment.classroom, @question.assignment), notice: 'Your answer was submitted.' }
        format.json { render :show, status: :created, location: classroom_question_path(@question) }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    #TODO: Doesnt work
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:student_id, :answer)
    end
end
