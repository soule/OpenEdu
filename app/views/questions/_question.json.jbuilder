json.extract! question, :id, :assignment_id, :name, :correct_answer, :created_at, :updated_at
json.url question_url(question, format: :json)
