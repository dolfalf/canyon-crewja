class CreateStudentCources < ActiveRecord::Migration
  def change
    create_table :student_cources do |t|
      t.integer :sequence_no  #自動採番（連番）
      t.string :course_id   #01:幼児、02:ジュニアス、03:英語、04:障害、05:音楽、06:胎教、99:その他
      t.datetime :lecture_startdate  #year+month+day
      t.string :lecture_enddate  #year+month+day
      t.integer :timetable_week   # 1:月曜、2:火曜、3:水曜、4:木曜、5:金曜、6:土曜、7:日曜
      t.integer :timetabel_time   # 1～8
      t.string :class   #A：Aクラス、B：Bクラス
      t.timestamps :regist_date
      t.string :regist_user
      t.timestamps :update_date
      t.string :update_user
      t.timestamps null: false
    end
  end
end
