class CreateOrderInfos < ActiveRecord::Migration
  def change
    create_table :order_infos do |t|
      t.integer :application_id
      t.string :application_name
      t.date :application_day
      t.integer :sequence_no
      t.string :item_code
      t.string :item_name
      t.decimal :quantity
      t.date :input_date
      t.date :order_plan_day
      t.date :order_action_day
      t.string :regist_user
      t.string :update_user

      t.timestamps null: false
    end
  end
end
