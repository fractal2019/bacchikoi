# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

     Label.create(:label_name => "ワーナーミュージックジャパン")
     Artist.create(artist_name: "ポルノグラフィティー", label_id: "#{1}", genre_name: "JーPOP")
2.times do |i|
     User.create(:name => "谷口#{i + 1}", :name_kana => "タニグチ", :email => "email@gmail.com#{i}", :password => "00001#{i}", :address => "公園#{i}", :tel => "080-4545-545#{i}", :postal_code => "987-654#{i}")
     Product.create(price: 1000, number_of_stock: 50, product_introduction: "aaa",staff_comment: "bbb", artist_id: "#{1}", product_name: "フラクタル#{i + 1}", type_name: "アルバム")
     Cart.create(user_id: "#{i + 1}")
end

2.times do |i|
     Disc.create(disc_name: "P1disc#{i + 1}", product_id: "#{1}")
     Song.create(song_name: "P1D1曲#{i + 1}", disc_id: "#{1}")
end
2.times do |i|
     Song.create(song_name: "P1D2曲#{i + 1}", disc_id: "#{2}")
end
2.times do |i|
     Disc.create(disc_name: "disc#{i + 1}", product_id: "#{2}")
     Song.create(song_name: "P2D1曲#{i + 1}", disc_id: "#{3}")
end
2.times do |i|
     Song.create(song_name: "P2D2曲#{i + 1}", disc_id: "#{4}")
end
2.times do |i|
     CartContent.create(item_quantity: "#{i + 40}", cart_id: "#{1}", product_id: "#{1}")
end
2.times do |i|
     CartContent.create(item_quantity: "#{i + 60}", cart_id: "#{2}", product_id: "#{2}")
end
2.times do |i|
     PurchaseHistory.create(user_id: "#{1}", destination_postal_code: "080-454-545#{i}",destination_address: "公園#{1 + i}",delivery_status: "商品準備中")
     PurchaseContent.create(purchase_unit_price: "240#{i}", product_id: "#{i + 1}",item_quantity: "#{i + 1}", purchase_history_id: "#{1}")
end
2.times do |i|
     PurchaseContent.create(purchase_unit_price: "300#{i}", product_id: "#{i + 1}",item_quantity: "#{i + 2}", purchase_history_id: "#{2}")
end
2.times do |i|
     PurchaseHistory.create(user_id: "#{2}", destination_postal_code: "080-828-828#{i}",destination_address: "海#{1 + i}",delivery_status: "受付")
     PurchaseContent.create(purchase_unit_price: "100#{i}", product_id: "#{i + 1}",item_quantity: "#{i + 3}", purchase_history_id: "#{3}")
end
2.times do |i|
     PurchaseContent.create(purchase_unit_price: "50#{i}", product_id: "#{i + 1}",item_quantity: "#{i + 4}", purchase_history_id: "#{4}")
end
2.times do |ad|
	Admin.create(email: "#{ad}", password: "#00000#{ad}")
end