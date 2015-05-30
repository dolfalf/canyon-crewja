class AddBranchInfoIdStudentCourse < ActiveRecord::Migration
  def change
    add_column :student_courses, :branch_info_id, :integer
    add_index :student_courses, :branch_info_id

    add_column :student_courses, :student_info_id, :integer
    add_index :student_courses, :student_info_id
  end
end
