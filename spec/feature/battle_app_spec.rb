require 'spec_helper'


feature 'Forms' do
	scenario "users can add their names to the form" do
		visit("/")
		fill_in :player_1_name, with: "Merveron"
		fill_in :player_2_name, with: "Camerve"
		click_button "Play"
		expect(page).to have_content "Merveron vs. Camerve"
	end

	scenario "Users can see eachothers hit points" do
			visit("/")
		fill_in :player_1_name, with: "Merveron"
		fill_in :player_2_name, with: "Camerve"
		click_button "Play"
		expect(page).to have_content "Camerve HP is: 1"
	end 

end
