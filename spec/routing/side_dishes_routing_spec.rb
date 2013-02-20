require "spec_helper"

describe SideDishesController do
  describe "routing" do

    it "routes to #index" do
      get("/side_dishes").should route_to("side_dishes#index")
    end

    it "routes to #new" do
      get("/side_dishes/new").should route_to("side_dishes#new")
    end

    it "routes to #show" do
      get("/side_dishes/1").should route_to("side_dishes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/side_dishes/1/edit").should route_to("side_dishes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/side_dishes").should route_to("side_dishes#create")
    end

    it "routes to #update" do
      put("/side_dishes/1").should route_to("side_dishes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/side_dishes/1").should route_to("side_dishes#destroy", :id => "1")
    end

  end
end
