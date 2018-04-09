class Submission < ApplicationRecord
  belongs_to :student
  belongs_to :question
end
