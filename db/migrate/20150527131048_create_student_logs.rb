class CreateStudentLogs < ActiveRecord::Migration
  def change
    create_table :student_logs do |t|
      t.string :branch_id
      t.string :student_id
      t.integer :sequence_no
      t.datetime :log_entry_date
      t.string :log_entry_contents
      t.string :log_engry_person

      t.timestamps null: false
    end
  end
end
