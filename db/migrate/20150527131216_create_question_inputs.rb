class CreateQuestionInputs < ActiveRecord::Migration
  def change
    create_table :question_inputs do |t|
      t.string :branch_id
      t.string :input_id
      t.integer :question_group
      t.string :question_number
      t.string :question_value
      t.string :question_comment

      t.timestamps null: false
    end
  end
end
