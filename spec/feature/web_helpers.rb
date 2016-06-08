def sign_in_and_play
	visit("/")
	fill_in :player_1_name, with: "Merveron"
	fill_in :player_2_name, with: "Camerve"
	click_button "Play"
end
