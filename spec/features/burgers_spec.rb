require 'spec_helper'


describe "making burgers" do
  fixtures :users

  before do 
    sign_in
  end
  
  	it "can create a burger" do
  		visit burgers_path
      click_on "New Burger"
      choose("Turkey")
      choose('Swiss')
      choose('Onion')
      click_on "Create Burger"	
  		page.should have_content "successful"
   	end	
 end

