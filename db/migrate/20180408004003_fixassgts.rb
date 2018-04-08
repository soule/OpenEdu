class Fixassgts < ActiveRecord::Migration[5.1]
  def change
  	add_column :assignments, :name, :string
  	add_column :assignments, :description, :text
  	add_column :assignments, :total_points, :integer
  	add_column :assignments, :classroom_id, :integer

  end
end
