class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :regist_user
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
