require "spec_helper"

describe UserRolesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_roles").should route_to("user_roles#index")
    end

    it "routes to #new" do
      get("/user_roles/new").should route_to("user_roles#new")
    end

    it "routes to #show" do
      get("/user_roles/1").should route_to("user_roles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_roles/1/edit").should route_to("user_roles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_roles").should route_to("user_roles#create")
    end

    it "routes to #update" do
      put("/user_roles/1").should route_to("user_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_roles/1").should route_to("user_roles#destroy", :id => "1")
    end

  end
end
