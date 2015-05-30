class AddBranchInfoIdToStudentInfos < ActiveRecord::Migration
  def change
    add_column :student_infos, :branch_info_id, :integer
    add_index :student_infos, :branch_info_id

    add_column :student_infos, :inquiry_id, :integer
    add_index :student_infos, :inquiry_id
  end
end
