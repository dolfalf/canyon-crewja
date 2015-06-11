class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :regist_user
      t.string :update_user

      t.timestamps null: false
    end
  end
end
