require "spec_helper"

describe DutiesController do
  describe "routing" do

    it "routes to #index" do
      get("/duties").should route_to("duties#index")
    end

    it "routes to #new" do
      get("/duties/new").should route_to("duties#new")
    end

    it "routes to #show" do
      get("/duties/1").should route_to("duties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/duties/1/edit").should route_to("duties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/duties").should route_to("duties#create")
    end

    it "routes to #update" do
      put("/duties/1").should route_to("duties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/duties/1").should route_to("duties#destroy", :id => "1")
    end

  end
end
