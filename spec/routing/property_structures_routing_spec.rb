require "spec_helper"

describe PropertyStructuresController do
  describe "routing" do

    it "routes to #index" do
      get("/property_structures").should route_to("property_structures#index")
    end

    it "routes to #new" do
      get("/property_structures/new").should route_to("property_structures#new")
    end

    it "routes to #show" do
      get("/property_structures/1").should route_to("property_structures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/property_structures/1/edit").should route_to("property_structures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/property_structures").should route_to("property_structures#create")
    end

    it "routes to #update" do
      put("/property_structures/1").should route_to("property_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/property_structures/1").should route_to("property_structures#destroy", :id => "1")
    end

  end
end
