class CreateItemGroups < ActiveRecord::Migration
  def change
    create_table :item_groups do |t|
      t.string :item_group_name
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
