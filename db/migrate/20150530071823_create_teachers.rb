class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
