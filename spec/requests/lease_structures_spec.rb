require 'spec_helper'

describe "LeaseStructures" do
  describe "GET /lease_structures" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lease_structures_path
      response.status.should be(200)
    end
  end
end
