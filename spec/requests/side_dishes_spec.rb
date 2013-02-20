require 'spec_helper'

describe "SideDishes" do
  describe "GET /side_dishes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get side_dishes_path
      response.status.should be(200)
    end
  end
end
