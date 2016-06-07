
require 'spec_helper'
require 'sinatra'

feature 'Enter names' do
  it "shows names on webpage" do
  visit('/')
  fill_in(:player_1_name, with: "Marlon")
  fill_in(:player_2_name, with: "Merve")
  click_button 'Submit'
  expect(page).to have_content('Marlon vs. Merve')
  end
end
