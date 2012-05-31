require "spec_helper"

describe SurchargesController do
  describe "routing" do

    it "routes to #index" do
      get("/surcharges").should route_to("surcharges#index")
    end

    it "routes to #new" do
      get("/surcharges/new").should route_to("surcharges#new")
    end

    it "routes to #show" do
      get("/surcharges/1").should route_to("surcharges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/surcharges/1/edit").should route_to("surcharges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/surcharges").should route_to("surcharges#create")
    end

    it "routes to #update" do
      put("/surcharges/1").should route_to("surcharges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/surcharges/1").should route_to("surcharges#destroy", :id => "1")
    end

  end
end
