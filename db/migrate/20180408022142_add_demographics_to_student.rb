class AddDemographicsToStudent < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :income_level, :integer
  	add_column :students, :sat_score, :string
  	add_column :students, :act_score, :string
  	add_column :students, :gpa, :integer
  	add_column :students, :state, :string
  	add_column :students, :country, :string
  	add_column :students, :intended_study, :string
  	add_column :students, :race, :string
  	add_column :students, :gender, :string
  end
end
