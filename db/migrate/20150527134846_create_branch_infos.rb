class CreateBranchInfos < ActiveRecord::Migration
  def change
    create_table :branch_infos do |t|
      has_many :inquiries
      t.string :branch_name
      t.string :address

      t.timestamps null: false
    end
  end
end
