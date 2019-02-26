# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

9.times do |i|
     User.create(:name => "谷口#{i}", :name_kana => "タニグチ", :email => "email@gmail.com#{i}", :password => "00001#{i}", :address => "公園#{i}", :tel => "080-4545-545#{i}", :postal_code => "987-654#{i}")
     Label.create(:label_name => "ワーナーミュージックジャパン")
     Artist.create(artist_name: "ポルノグラフィティー#{i + 1}", label_id: "#{i}")
     Product.create(price: 1000, number_of_stock: 50, product_introduction: "aaa",staff_comment: "bbb", artist_id: "#{i + 1}", product_name: "フラクタル#{i}", type_name: "アルバム")
     Disc.create(disc_name: "disc#{i + 1}", product_id: "#{i + 1}")
     Song.create(song_name: "曲#{i + 1}", disc_id: "#{i + 1}", genre_name: "JーPOP")
     Cart.create(user_id: "#{i + 1}")
     CartContent.create(item_quantity: "#{i + 40}", carts_id: "#{i + 1}")
     PurchaseHistory.create(user_id: "#{i + 1}", destination_postal_code: "080-454-545#{i}",destination_address: "公園#{i}",delivery_status: "商品準備中")
     PurchaseContent.create(purchase_unit_price: "240#{i}", product_id: "#{i + 1}",item_quantity: "#{i}", purchase_history_id: "#{i + 1}")
end
2.times do |ad|
	Admin.create(email: "#{ad}", password: "#00000#{ad}")
end