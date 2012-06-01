require "spec_helper"

describe LeaseStructuresController do
  describe "routing" do

    it "routes to #index" do
      get("/lease_structures").should route_to("lease_structures#index")
    end

    it "routes to #new" do
      get("/lease_structures/new").should route_to("lease_structures#new")
    end

    it "routes to #show" do
      get("/lease_structures/1").should route_to("lease_structures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lease_structures/1/edit").should route_to("lease_structures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lease_structures").should route_to("lease_structures#create")
    end

    it "routes to #update" do
      put("/lease_structures/1").should route_to("lease_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lease_structures/1").should route_to("lease_structures#destroy", :id => "1")
    end

  end
end
