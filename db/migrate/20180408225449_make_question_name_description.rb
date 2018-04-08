class MakeQuestionNameDescription < ActiveRecord::Migration[5.1]
  def change
  	  remove_column :questions, :name
  	  add_column :questions, :description, :text
  end
end
