require "spec_helper"

describe BurgersController do
  describe "routing" do

    it "routes to #index" do
      get("/burgers").should route_to("burgers#index")
    end

    it "routes to #new" do
      get("/burgers/new").should route_to("burgers#new")
    end

    it "routes to #show" do
      get("/burgers/1").should route_to("burgers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/burgers/1/edit").should route_to("burgers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/burgers").should route_to("burgers#create")
    end

    it "routes to #update" do
      put("/burgers/1").should route_to("burgers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/burgers/1").should route_to("burgers#destroy", :id => "1")
    end

  end
end
