json.extract! submission, :id, :student_id, :question_id, :answer, :created_at, :updated_at
json.url submission_url(submission, format: :json)
