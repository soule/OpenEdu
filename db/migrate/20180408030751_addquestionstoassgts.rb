class Addquestionstoassgts < ActiveRecord::Migration[5.1]
  def change
  	create_table :questions do |t|
  		t.string :name
  		t.string :correct_answer
  		t.integer :assignment_id
  	end
  	
  	remove_column :assignments, :total_points
  end
end
