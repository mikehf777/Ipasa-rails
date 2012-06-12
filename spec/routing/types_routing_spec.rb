require "spec_helper"

describe TypesController do
  describe "routing" do

    it "routes to #index" do
      get("/types").should route_to("types#index")
    end

    it "routes to #new" do
      get("/types/new").should route_to("types#new")
    end

    it "routes to #show" do
      get("/types/1").should route_to("types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/types/1/edit").should route_to("types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/types").should route_to("types#create")
    end

    it "routes to #update" do
      put("/types/1").should route_to("types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/types/1").should route_to("types#destroy", :id => "1")
    end

  end
end
