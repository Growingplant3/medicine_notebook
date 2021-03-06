# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pharmacy.create(name: "チューリップ薬局",postcode: "1638001",prefecture_code: "東京都",address_city: "新宿区2丁目",address_street: "8-1",address_building: "",normal_telephone_number: "0353211111",abnormal_telephone_number: "01011112222",remarks: "元気で明るい薬局作りを心がけています。",opinion: "アプリケーションに◯◯できる機能を追加して欲しい",email: "tulips@gmail.com",password: "111111")
Pharmacy.find(1).activities.create(week_day: "monday",business: "open",open: "09:00",close: "18:00")
Pharmacy.find(1).activities.create(week_day: "tuesday",business: "open",open: "09:00",close: "18:00")
Pharmacy.find(1).activities.create(week_day: "wednesday",business: "open",open: "09:00",close: "14:00")
Pharmacy.find(1).activities.create(week_day: "thursday",business: "open",open: "09:00",close: "18:00")
Pharmacy.find(1).activities.create(week_day: "friday",business: "open",open: "09:00",close: "18:00")
Pharmacy.find(1).activities.create(week_day: "saturday",business: "open",open: "09:00",close: "14:00")
Pharmacy.find(1).activities.create(week_day: "sunday",business: "close",open: "",close: "")
Pharmacy.create(name: "タンポポ薬局",postcode: "2608667",prefecture_code: "千葉県",address_city: "千葉市中央区市場町",address_street: "1-1",address_building: "",normal_telephone_number: "0432232110",abnormal_telephone_number: "01011113333",remarks: "GW中は◯月×日が休日当番となっており、開局時間は09:00〜18:00です。",opinion: "◯◯機能のデザインがイマイチ、改善して欲しい",email: "dandelion@gmail.com",password: "111111")
Pharmacy.find(2).activities.create(week_day: "monday",business: "open",open: "10:00",close: "19:00")
Pharmacy.find(2).activities.create(week_day: "tuesday",business: "open",open: "10:00",close: "19:00")
Pharmacy.find(2).activities.create(week_day: "wednesday",business: "open",open: "10:00",close: "19:00")
Pharmacy.find(2).activities.create(week_day: "thursday",business: "close",open: "",close: "")
Pharmacy.find(2).activities.create(week_day: "friday",business: "open",open: "10:00",close: "19:00")
Pharmacy.find(2).activities.create(week_day: "saturday",business: "open",open: "10:00",close: "19:00")
Pharmacy.find(2).activities.create(week_day: "sunday",business: "open",open: "10:00",close: "14:00")
Pharmacy.create(name: "アジサイ薬局",postcode: "3309301",prefecture_code: "埼玉県",address_city: "さいたま市浦和区高砂3丁目",address_street: "15-1",address_building: "",normal_telephone_number: "0488242111",abnormal_telephone_number: "01011114444",remarks: "駐車場は普通車乗用車3台分のスペースを設けております。",opinion: "◯◯機能を使って××をしようとしたらエラーが発生、改善して欲しい",email: "hydrangea@gmail.com",password: "111111")
Pharmacy.find(3).activities.create(week_day: "monday",business: "open",open: "08:30",close: "19:00")
Pharmacy.find(3).activities.create(week_day: "tuesday",business: "open",open: "08:30",close: "19:00")
Pharmacy.find(3).activities.create(week_day: "wednesday",business: "open",open: "08:30",close: "19:00")
Pharmacy.find(3).activities.create(week_day: "thursday",business: "open",open: "08:30",close: "14:00")
Pharmacy.find(3).activities.create(week_day: "friday",business: "open",open: "08:30",close: "19:00")
Pharmacy.find(3).activities.create(week_day: "saturday",business: "open",open: "08:30",close: "19:00")
Pharmacy.find(3).activities.create(week_day: "sunday",business: "close",open: "",close: "")
Pharmacy.create(name: "ひまわり薬局",postcode: "0308570",prefecture_code: "青森県",address_city: "青森市長島1丁目",address_street: "1-1",address_building: "",normal_telephone_number: "0177221111",abnormal_telephone_number: "01011115555",remarks: "日曜日も14:00まで開局しております。",opinion: "◯◯ページの××の色がとても見づらい、他の色に変えて欲しい",email: "sunflower@gmail.com",password: "111111")
Pharmacy.find(4).activities.create(week_day: "monday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "tuesday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "wednesday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "thursday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "friday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "saturday",business: "open",open: "08:30",close: "20:00")
Pharmacy.find(4).activities.create(week_day: "sunday",business: "open",open: "08:30",close: "14:00")
User.create(admin: "1",name: "山田太郎",postcode: "3718570",prefecture_code: "群馬県",address_city: "群馬県前橋市大手町1丁目",address_street: "1-1",address_building: "ファーマシスタ405号室",telephone_number: "0272231111",age: "36",sex: "male",body_weight: "",blood_types: "type_a",side_effect: "なし",allergy: "なし",sick: "なし",operation: "なし",remarks: "平日日中は仕事の為、電話には出られません。",opinion: "たまにしか使わないから、パスワード忘れちゃうな・・・",email: "yamada_taro@gmail.com",password: "222222")
User.find(1).conditions.create(record_time: "#{Date.today}",systolic_blood_pressure: "107",diastolic_blood_pressure: "64",pulse: "72",blood_sugar: "69",attached_comment: "今日の健康診断の結果",updated_at: "#{Date.today}")
User.create(admin: "0",name: "高橋蓮",postcode: "2318588",prefecture_code: "神奈川県",address_city: "神奈川県横浜市中区日本大通1丁目",address_street: nil,address_building: "アイソトープ301号室",telephone_number: "0452101111",age: "6",sex: "male",body_weight: "20",blood_types: "type_o",side_effect: "なし",allergy: "ハウスダスト、花粉症",sick: "アトピー性皮膚炎",operation: "なし",remarks: "粉薬は苦手",opinion: "よく使ってるよ",email: "takahashi_ren@gmail.com",password: "222222")
User.create(admin: "0",name: "鈴木花子",postcode: "3208501",prefecture_code: "栃木県",address_city: "栃木県宇都宮市塙田1丁目",address_street: "1-20",address_building: nil,telephone_number: "0286232323",age: "85",sex: "female",body_weight: "38",blood_types: "type_b",side_effect: "アムロジンでふらつき",allergy: "ペニシリン系で薬疹",sick: "52歳でリウマチ",operation: "64歳で胃癌の手術",remarks: "たまに薬を飲み忘れます",opinion: "手帳を持ち運ぶ必要が無くなり、とても助かっております",email: "suzuki_hanako@gmail.com",password: "222222")
User.find(3).conditions.create(record_time: "#{Date.today-7}",systolic_blood_pressure: "123",diastolic_blood_pressure: "102",pulse: "52",blood_sugar: "110",attached_comment: "孫と遊んだ、ヘトヘト",updated_at: "#{Date.today-7}")
User.find(3).conditions.create(record_time: "#{Date.today-6}",systolic_blood_pressure: "159",diastolic_blood_pressure: "120",pulse: "67",blood_sugar: "152",attached_comment: "かかりつけの通院日、検査値が良くないと先生に怒られた",updated_at: "#{Date.today-6}")
User.find(3).conditions.create(record_time: "#{Date.today-5}",systolic_blood_pressure: "111",diastolic_blood_pressure: "93",pulse: "66",blood_sugar: "102",attached_comment: "今日は体調が良い",updated_at: "#{Date.today-5}")
User.find(3).conditions.create(record_time: "#{Date.today-4}",systolic_blood_pressure: "145",diastolic_blood_pressure: "111",pulse: "62",blood_sugar: "106",attached_comment: "今日は寒い、少し厚着をして散歩する",updated_at: "#{Date.today-4}")
User.find(3).conditions.create(record_time: "#{Date.today-3}",systolic_blood_pressure: "120",diastolic_blood_pressure: "97",pulse: "71",blood_sugar: "180",attached_comment: "どら焼き食べた、血糖値高いかな",updated_at: "#{Date.today-3}")
User.find(3).conditions.create(record_time: "#{Date.today-2}",systolic_blood_pressure: "115",diastolic_blood_pressure: "92",pulse: "72",blood_sugar: "131",attached_comment: "天気が悪くて洗濯物が乾かない、どこにも出かけず過ごす",updated_at: "#{Date.today-2}")
User.find(3).conditions.create(record_time: "#{Date.today-1}",systolic_blood_pressure: "125",diastolic_blood_pressure: "104",pulse: "52",blood_sugar: "123",attached_comment: "風が強い日、気をつけて出かける",updated_at: "#{Date.today-1}")
User.find(3).conditions.create(record_time: "#{Date.today}",systolic_blood_pressure: "109",diastolic_blood_pressure: "82",pulse: "60",blood_sugar: "105",attached_comment: "今日は東公園へ向かい30分散歩した、季節の花が綺麗に咲いてた",updated_at: "#{Date.today}")
MedicineNotebookRecord.create(user_id: "1",pharmacy_id: "1",date_of_issue: "#{Date.today}",date_of_dispensing: "#{Date.today}",medical_institution: "河野診療所",doctor_name: "河野貴")
MedicineNotebookRecord.find(1).drug_informations.create(drug_name: "amlodipine_5",daily_dose: "1",prescription_days: "30",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "tablet",remaining_medicine: "0")
DrugInformation.find(1).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.find(1).drug_informations.create(drug_name: "rosuvastatin_5",daily_dose: "1",prescription_days: "30",medical_effect: "lipid_abnormalities",crush: "as_it_is",shading: "light",one_dose_package: "tablet",remaining_medicine: "0")
DrugInformation.find(2).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.create(user_id: "2",pharmacy_id: "2",date_of_issue: "#{Date.today}",date_of_dispensing: "#{Date.today}",medical_institution: "中山小児クリニック",doctor_name: "中山誠")
MedicineNotebookRecord.find(2).drug_informations.create(drug_name: "clarith_50",daily_dose: "2",prescription_days: "14",medical_effect: "anti_bacterial_drug",crush: "as_it_is",shading: "light",one_dose_package: "tablet",remaining_medicine: "0")
DrugInformation.find(3).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(3).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(2).drug_informations.create(drug_name: "kipres_chewable_5",daily_dose: "1",prescription_days: "14",medical_effect: "anti_allergic_drug",crush: "as_it_is",shading: "light",one_dose_package: "tablet",remaining_medicine: "0")
DrugInformation.find(4).how_to_takes.create(number_of_doses: "1",when_to_take: "night")
MedicineNotebookRecord.create(user_id: "3",pharmacy_id: "1",date_of_issue: "#{Date.today-29}",date_of_dispensing: "#{Date.today-28}",medical_institution: "橘内科医院",doctor_name: "橘康")
MedicineNotebookRecord.find(3).drug_informations.create(drug_name: "xarelto_10",daily_dose: "1",prescription_days: "14",medical_effect: "blood_flow_smoothly",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(5).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.find(3).drug_informations.create(drug_name: "artist_1_2_5",daily_dose: "2",prescription_days: "14",medical_effect: "heart_disease",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(6).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(6).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(3).drug_informations.create(drug_name: "olmetec_10",daily_dose: "1",prescription_days: "14",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(7).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.find(3).drug_informations.create(drug_name: "ancaron_100",daily_dose: "2",prescription_days: "14",medical_effect: "arrhythmia",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(8).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(8).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(3).drug_informations.create(drug_name: "lasix_20",daily_dose: "0.5",prescription_days: "14",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(9).how_to_takes.create(number_of_doses: "0.5",when_to_take: "after_morning_meal")
MedicineNotebookRecord.create(user_id: "3",pharmacy_id: "3",date_of_issue: "#{Date.today-14}",date_of_dispensing: "#{Date.today-14}",medical_institution: "橘内科医院",doctor_name: "橘康")
MedicineNotebookRecord.find(4).drug_informations.create(drug_name: "eliquis_2_5",daily_dose: "2",prescription_days: "14",medical_effect: "blood_flow_smoothly",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(10).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(10).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(4).drug_informations.create(drug_name: "artist_1_2_5",daily_dose: "2",prescription_days: "14",medical_effect: "heart_disease",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(11).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(11).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(4).drug_informations.create(drug_name: "olmetec_10",daily_dose: "1",prescription_days: "14",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(12).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.find(4).drug_informations.create(drug_name: "ancaron_100",daily_dose: "2",prescription_days: "14",medical_effect: "arrhythmia",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(13).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(13).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(4).drug_informations.create(drug_name: "lasix_20",daily_dose: "0.5",prescription_days: "14",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(14).how_to_takes.create(number_of_doses: "0.5",when_to_take: "after_morning_meal")
MedicineNotebookRecord.create(user_id: "3",pharmacy_id: "4",date_of_issue: "#{Date.today-1}",date_of_dispensing: "#{Date.today}",medical_institution: "橘内科医院",doctor_name: "橘康")
MedicineNotebookRecord.find(5).drug_informations.create(drug_name: "eliquis_2_5",daily_dose: "2",prescription_days: "30",medical_effect: "blood_flow_smoothly",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(15).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(15).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(5).drug_informations.create(drug_name: "artist_1_2_5",daily_dose: "2",prescription_days: "30",medical_effect: "heart_disease",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(16).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(16).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(5).drug_informations.create(drug_name: "olmetec_10",daily_dose: "1",prescription_days: "30",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(17).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
MedicineNotebookRecord.find(5).drug_informations.create(drug_name: "ancaron_100",daily_dose: "2",prescription_days: "30",medical_effect: "arrhythmia",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(18).how_to_takes.create(number_of_doses: "1",when_to_take: "after_morning_meal")
DrugInformation.find(18).how_to_takes.create(number_of_doses: "1",when_to_take: "after_dinner")
MedicineNotebookRecord.find(5).drug_informations.create(drug_name: "lasix_20",daily_dose: "0.5",prescription_days: "30",medical_effect: "anti_hypertensive",crush: "as_it_is",shading: "light",one_dose_package: "pouch",remaining_medicine: "0")
DrugInformation.find(19).how_to_takes.create(number_of_doses: "0.5",when_to_take: "after_morning_meal")