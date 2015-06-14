class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.date :inquiry_date  #【画面項目】year + month + day
      t.string :inquiry_person      #担当者
      t.integer :inquiry_type     #1:来室、2:電話、3:ﾌｧｯｸｽ、4:ﾒｰﾙ、5:その他
      t.string :inquiry_type_etc  #全角の場合5文字まで。半角の場合10文字まで
      t.string :parent_name
      t.string :parent_name_kana
      t.string :relation
      t.string :telephone
      t.string :address_zip
      t.string :address_prefectures   #都道府県マスタの都道府県コード
      t.string :address_city
      t.string :mobile
      t.string :email
      t.string :station
      t.integer :payment    #1:郵便局自動払込、2:銀行振込
      t.string :pay_account_mark  #郵便局口座の記号に使用　　(郵便局自動払込の場合のみ)
      t.string :pay_account_numner  #郵便局口座の番号に使用　　(郵便局自動払込の場合のみ)
      t.string :pay_owner
      t.boolean :course_1 #幼児コース
      t.boolean :course_2 #ジュニアスコース
      t.boolean :course_3 #英語コース
      t.boolean :course_4 #障害コース
      t.boolean :course_5 #音楽コース
      t.boolean :course_6 #胎教コース
      t.boolean :course_7 #その他コース
      t.boolean :course_8 #予備。　今回は使用しない
      t.boolean :course_9 #予備。　今回は使用しない
      t.boolean :course_10 #予備。　今回は使用しない
      t.string :inquiry_name_1
      t.string :inquiry_name_kana_1
      t.date :inquiry_birthday_1
      t.string :inquiry_age_yearmonth_1 #例：2歳10ヶ月→2.10と入力表示
      t.string :inquiry_grade_1
      t.integer :inquiry_gender_1 #0：男　1：女
      t.string :inquiry_name_2
      t.string :inquiry_name_kana_2
      t.date :inquiry_birthday_2
      t.string :inquiry_age_yearmonth_2 #例：2歳10ヶ月→2.10と入力表示
      t.string :inquiry_grade_2
      t.integer :inquiry_gender_2 #0：男　1：女
      t.string :inquiry_name_3
      t.string :inquiry_name_kana_3
      t.date :inquiry_birthday_3
      t.string :inquiry_age_yearmonth_3 #例：2歳10ヶ月→2.10と入力表示
      t.string :inquiry_grade_3
      t.integer :inquiry_gender_3 #0：男　1：女
      t.string :inquiry_name_4
      t.string :inquiry_name_kana_4
      t.date :inquiry_birthday_4
      t.string :inquiry_age_yearmonth_4 #例：2歳10ヶ月→2.10と入力表示
      t.string :inquiry_grade_4
      t.integer :inquiry_gender_4 #0：男　1：女
      t.string :inquiry_name_5
      t.string :inquiry_name_kana_5
      t.date :inquiry_birthday_5
      t.string :inquiry_age_yearmonth_5 #例：2歳10ヶ月→2.10と入力表示
      t.string :inquiry_grade_5
      t.integer :inquiry_gender_5 #0：男　1：女
      t.boolean :inquiry_data
      t.datetime :send_date
      t.boolean :inquiry_experience
      t.datetime :experience_date
      t.boolean :inquiry_explanation
      t.datetime :explanation_date
      t.boolean :inquiry_applicant
      t.date :applicant_date  #【画面項目】year + month + day
      t.boolean :inquiry_other
      t.string :inquiry_other_content
      t.string :remarks
      t.string :regist_user
      t.string :update_user

      # FK
      t.integer :branch_info_id

      t.timestamps null: false
    end

    add_index :inquiries, :branch_info_id
  end
end
