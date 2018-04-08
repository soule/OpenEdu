class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
    	t.belongs_to :question
    	t.belongs_to :student
    	t.string :answer
    end
  end
end
