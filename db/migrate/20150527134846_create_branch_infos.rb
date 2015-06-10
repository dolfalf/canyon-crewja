class CreateBranchInfos < ActiveRecord::Migration
  def change
    create_table :branch_infos do |t|
      t.string :branch_name
      t.string :branch_kana
      t.string :address_zip
      t.string :address
      t.string :bank_name
      t.string :bank_code
      t.string :account_type
      t.string :account_number
      t.string :account_name
      t.string :account_name_kana
      t.string :post_account_mark
      t.string :post_account_number
      t.string :post_master_number
      t.string :post_master_name
      t.datetime :regist_date
      t.string :regist_user
      t.datetime :update_date
      t.string :update_user

      t.timestamps null: false
    end
  end
end
