require "spec_helper"

describe PropertyUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/property_users").should route_to("property_users#index")
    end

    it "routes to #new" do
      get("/property_users/new").should route_to("property_users#new")
    end

    it "routes to #show" do
      get("/property_users/1").should route_to("property_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/property_users/1/edit").should route_to("property_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/property_users").should route_to("property_users#create")
    end

    it "routes to #update" do
      put("/property_users/1").should route_to("property_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/property_users/1").should route_to("property_users#destroy", :id => "1")
    end

  end
end
