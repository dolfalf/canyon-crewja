class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :post_no1
      t.string :post_no2
      t.string :kana_1
      t.string :kana_2
      t.string :kana_3
      t.string :kanji_1
      t.string :kanji_2
      t.string :kanji_3
      t.string :regist_user
      t.string :update_user
      
      t.timestamps null: false
    end
  end
end
