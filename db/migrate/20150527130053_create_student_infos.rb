class CreateStudentInfos < ActiveRecord::Migration
  def change
    create_table :student_infos do |t|
      t.string :child_id
      t.string :student_name
      t.string :student_kana
      t.integer :gender   #0：男　1：女
      t.date :birthday
      t.string :application_age_yearmonth #year + month + day
      t.date :pay_date
      t.date :entry_date
      t.integer :entry_class  # 0:通常、1:移室
      t.string :entry_class_base
      t.date :leave_date
      t.integer :leave_class  # 0:通常、1:移室
      t.string :leave_class_base
      t.string :link_sibling_id
      t.integer :same_enter # 0:有り、1:無し
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user

      t.timestamps null: false
    end
  end
end
