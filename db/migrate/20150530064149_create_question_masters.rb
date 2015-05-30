class CreateQuestionMasters < ActiveRecord::Migration
  def change
    create_table :question_masters do |t|
      t.integer :question_group #１：問合せ、２：入室申込時、３：退室時
      t.string :question_value
      t.integer :show_flg   #１：非表示、２：表示
      t.timestamps :regist_date
      t.string :regist_user
      t.timestamps :update_date
      t.string :update_user

      t.timestamps null: false
    end
  end
end
