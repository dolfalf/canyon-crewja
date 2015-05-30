class CreateStudentLogs < ActiveRecord::Migration
  def change
    create_table :student_logs do |t|
      t.integer :sequence_no
      t.datetime :log_entry_date  #year + month + day
      t.string :log_entry_contents
      t.integer :loggroup   # 1:気付き、2:電話で相談、3:面談、4:その他
      t.string :log_engry_person
      t.timestamps :regist_date
      t.string :regist_user
      t.timestamps :update_date
      t.string :update_user

      t.timestamps null: false
    end
  end
end
