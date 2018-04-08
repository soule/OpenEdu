class Fixclassrooms < ActiveRecord::Migration[5.1]
  def change
  	add_column :classrooms, :name, :string
  	add_column :classrooms, :description, :text
  	add_column :classrooms, :teacher_id, :integer
  end
end
