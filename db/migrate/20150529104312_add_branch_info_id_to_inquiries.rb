class AddBranchInfoIdToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :branch_info_id, :integer
    add_index :inquiries, :branch_info_id
  end
end
