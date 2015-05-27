class CreateStudentInfos < ActiveRecord::Migration
  def change
    create_table :student_infos do |t|
      t.string :branch_id
      t.string :child_id
      t.string :student_name
      t.string :student_kana
      t.integer :gender   #0：男　1：女
      t.date :birthday
      t.string :application_age_yearmonth
      t.string :inquery_id
      
      t.timestamps null: false
    end
  end
end
