require "spec_helper"

describe LeaseUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/lease_users").should route_to("lease_users#index")
    end

    it "routes to #new" do
      get("/lease_users/new").should route_to("lease_users#new")
    end

    it "routes to #show" do
      get("/lease_users/1").should route_to("lease_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lease_users/1/edit").should route_to("lease_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lease_users").should route_to("lease_users#create")
    end

    it "routes to #update" do
      put("/lease_users/1").should route_to("lease_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lease_users/1").should route_to("lease_users#destroy", :id => "1")
    end

  end
end
