class CreatePrefecturesCodes < ActiveRecord::Migration
  def change
    create_table :prefectures_codes do |t|
      t.string :code
      t.string :name
      t.timestamps null: false
    end
  end
end
