30.times do |no|
	Product.seed do |s|
		s.id = " #{no}"
		s.artist_name = " #{no}"
		s.artist_name_kana = "あーてぃすと #{no}"
		s.artist_name_eng = "artist #{no}"
		s.cd_name = "cd #{no}"
		s.label_name = "レーベル #{no}"
		s.label_name_kana = "れーべる #{no}"
		s.label_name_eng = "label #{no}"
		s.price = "100 #{no}"
		s.category = "ジャンル　#{no}"
		s.quantity = "100"
		s.cd_image = Rails.root.join("db/fixtures/images/sample.jpg").open
	end
end