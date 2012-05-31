require "spec_helper"

describe RentsController do
  describe "routing" do

    it "routes to #index" do
      get("/rents").should route_to("rents#index")
    end

    it "routes to #new" do
      get("/rents/new").should route_to("rents#new")
    end

    it "routes to #show" do
      get("/rents/1").should route_to("rents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rents/1/edit").should route_to("rents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rents").should route_to("rents#create")
    end

    it "routes to #update" do
      put("/rents/1").should route_to("rents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rents/1").should route_to("rents#destroy", :id => "1")
    end

  end
end
