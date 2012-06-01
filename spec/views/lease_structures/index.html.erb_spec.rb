require 'spec_helper'

describe "lease_structures/index" do
  before(:each) do
    assign(:lease_structures, [
      stub_model(LeaseStructure,
        :structure_id => 1,
        :cantidad => 2
      ),
      stub_model(LeaseStructure,
        :structure_id => 1,
        :cantidad => 2
      )
    ])
  end

  it "renders a list of lease_structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
