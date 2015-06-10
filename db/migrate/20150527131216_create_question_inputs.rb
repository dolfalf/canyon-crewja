class CreateQuestionInputs < ActiveRecord::Migration
  def change
    create_table :question_inputs do |t|
      t.string :question_value
      t.string :question_comment
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
