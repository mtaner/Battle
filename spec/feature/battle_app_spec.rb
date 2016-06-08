require 'spec_helper'


feature 'Battle Feature Test' do
	scenario "users can add their names to the form" do
		sign_in_and_play
		expect(page).to have_content "Merveron vs. Camerve"
	end

	scenario "Users can see eachothers hit points" do
		sign_in_and_play
		expect(page).to have_content "Camerve HP is: 60"
	end

	scenario "player 1 can attack player 2" do
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_content "Merveron has attacked Camerve."
		#Player 1 attack? Button = Attack Button?
		#String that says "Merveron has attacked Camerve."
	end

end
