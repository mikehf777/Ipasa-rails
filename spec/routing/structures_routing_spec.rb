require "spec_helper"

describe StructuresController do
  describe "routing" do

    it "routes to #index" do
      get("/structures").should route_to("structures#index")
    end

    it "routes to #new" do
      get("/structures/new").should route_to("structures#new")
    end

    it "routes to #show" do
      get("/structures/1").should route_to("structures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/structures/1/edit").should route_to("structures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/structures").should route_to("structures#create")
    end

    it "routes to #update" do
      put("/structures/1").should route_to("structures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/structures/1").should route_to("structures#destroy", :id => "1")
    end

  end
end
