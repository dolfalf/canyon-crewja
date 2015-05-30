class CreateBillHeadInfos < ActiveRecord::Migration
  def change
    create_table :bill_head_infos do |t|
      t.integer :payment
      t.date :payday
      t.date :print_day
      t.integer :print_count
      t.date :auto_print_day
      t.integer :auto_print_count
      t.decimal :all_amount
      t.integer :unpaid_flag
      t.timestamps :regist_date
      t.string :regist_user
      t.timestamps :update_date
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
