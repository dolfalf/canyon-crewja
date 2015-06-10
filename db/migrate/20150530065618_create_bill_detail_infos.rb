class CreateBillDetailInfos < ActiveRecord::Migration
  def change
    create_table :bill_detail_infos do |t|
      t.integer :application_id
      t.integer :sequence_no
      t.string :item_code
      t.string :item_name
      t.string :item_group_code
      t.decimal :sale_price
      t.decimal :quantity
      t.decimal :amount
      t.date :input_date
      t.date :order_day
      t.date :service_day
      t.string :recept_person
      t.integer :bill_flag
      t.date :pay_day
      t.integer :display_flag
      t.integer :check_flag
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
