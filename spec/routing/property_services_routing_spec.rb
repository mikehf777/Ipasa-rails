require "spec_helper"

describe PropertyServicesController do
  describe "routing" do

    it "routes to #index" do
      get("/property_services").should route_to("property_services#index")
    end

    it "routes to #new" do
      get("/property_services/new").should route_to("property_services#new")
    end

    it "routes to #show" do
      get("/property_services/1").should route_to("property_services#show", :id => "1")
    end

    it "routes to #edit" do
      get("/property_services/1/edit").should route_to("property_services#edit", :id => "1")
    end

    it "routes to #create" do
      post("/property_services").should route_to("property_services#create")
    end

    it "routes to #update" do
      put("/property_services/1").should route_to("property_services#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/property_services/1").should route_to("property_services#destroy", :id => "1")
    end

  end
end
