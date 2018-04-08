class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
t.string "name"
    t.text "description"
    t.integer "teacher_id"
      t.timestamps
    end
  end
end
