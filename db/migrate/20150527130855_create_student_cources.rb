class CreateStudentCources < ActiveRecord::Migration
  def change
    create_table :student_cources do |t|
      t.string :branch_id
      t.string :student_id
      t.integer :sequence_no
      t.string :coruse_id
      t.datetime :lecture_startdate
      t.string :lecture_enddate
      t.integer :timetable_week
      t.integer :timetabel_time
      t.string :class

      t.timestamps null: false
    end
  end
end
