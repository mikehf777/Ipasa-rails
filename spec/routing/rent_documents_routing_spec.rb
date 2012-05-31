require "spec_helper"

describe RentDocumentsController do
  describe "routing" do

    it "routes to #index" do
      get("/rent_documents").should route_to("rent_documents#index")
    end

    it "routes to #new" do
      get("/rent_documents/new").should route_to("rent_documents#new")
    end

    it "routes to #show" do
      get("/rent_documents/1").should route_to("rent_documents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rent_documents/1/edit").should route_to("rent_documents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rent_documents").should route_to("rent_documents#create")
    end

    it "routes to #update" do
      put("/rent_documents/1").should route_to("rent_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rent_documents/1").should route_to("rent_documents#destroy", :id => "1")
    end

  end
end
