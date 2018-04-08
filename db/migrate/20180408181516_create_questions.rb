class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
  	drop_table :questions
    create_table :questions do |t|
      t.belongs_to :assignment, foreign_key: true
      t.string :name
      t.string :correct_answer

      t.timestamps
    end
  end
end
