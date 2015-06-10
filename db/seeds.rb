# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Dummy Data
BranchInfo.create(branch_name: '赤羽１' , branch_kana: 'Aakabane1', address_zip: '1150003', address: '', 
  bank_name: 'UFJ', bank_code: '001', account_type: 1, account_number: '123456', account_name: '赤羽１', account_name_kana: 'アカバネ１', 
  post_account_mark: '1', post_account_number: '1234', post_master_number: '12345', post_master_name: '123456', 
  regist_date: '2015-06-09',regist_user: 'test_user',update_date: '2015-06-09', update_user: 'test_user')


# Master Data
PrefecturesCode.create(code: '01' , name: '北海道')
PrefecturesCode.create( code: '02' , name: '青森県')
PrefecturesCode.create( code: '03' , name: '岩手県')
PrefecturesCode.create( code: '04' , name: '宮城県')
PrefecturesCode.create( code: '05' , name: '秋田県')
PrefecturesCode.create( code: '06' , name: '山形県')
PrefecturesCode.create( code: '07' , name: '福島県')
PrefecturesCode.create( code: '08' , name: '茨城県')
PrefecturesCode.create( code: '09' , name: '栃木県')
PrefecturesCode.create( code: '10' , name: '群馬県')
PrefecturesCode.create( code: '11' , name: '埼玉県')
PrefecturesCode.create( code: '12' , name: '千葉県')
PrefecturesCode.create( code: '13' , name: '東京都')
PrefecturesCode.create( code: '14' , name: '神奈川県')
PrefecturesCode.create( code: '15' , name: '新潟県')
PrefecturesCode.create( code: '16' , name: '富山県')
PrefecturesCode.create( code: '15' , name: '新潟県')
PrefecturesCode.create( code: '16' , name: '新潟県')
PrefecturesCode.create( code: '17' , name: '石川県')
PrefecturesCode.create( code: '18' , name: '福井県')
PrefecturesCode.create( code: '19' , name: '山梨県')
PrefecturesCode.create( code: '20' , name: '長野県')
PrefecturesCode.create( code: '21' , name: '岐阜県')
PrefecturesCode.create( code: '22' , name: '静岡県')
PrefecturesCode.create( code: '23' , name: '愛知県')
PrefecturesCode.create( code: '24' , name: '三重県')
PrefecturesCode.create( code: '25' , name: '滋賀県')
PrefecturesCode.create( code: '26' , name: '京都府')
PrefecturesCode.create( code: '27' , name: '大阪府')
PrefecturesCode.create( code: '28' , name: '兵庫県')
PrefecturesCode.create( code: '29' , name: '奈良県')
PrefecturesCode.create( code: '30' , name: '和歌山県')
PrefecturesCode.create( code: '31' , name: '鳥取県')
PrefecturesCode.create( code: '32' , name: '島根県')
PrefecturesCode.create( code: '33' , name: '岡山県')
PrefecturesCode.create( code: '34' , name: '広島県')
PrefecturesCode.create( code: '35' , name: '山口県')
PrefecturesCode.create( code: '36' , name: '徳島県')
PrefecturesCode.create( code: '37' , name: '香川県')
PrefecturesCode.create( code: '38' , name: '愛媛県')
PrefecturesCode.create( code: '39' , name: '高知県')
PrefecturesCode.create( code: '40' , name: '福岡県')
PrefecturesCode.create( code: '41' , name: '佐賀県')
PrefecturesCode.create( code: '42' , name: '長崎県')
PrefecturesCode.create( code: '43' , name: '熊本県')
PrefecturesCode.create( code: '44' , name: '大分県')
PrefecturesCode.create( code: '45' , name: '宮崎県')
PrefecturesCode.create( code: '46' , name: '鹿児島県')
PrefecturesCode.create( code: '46' , name: '沖縄県')

