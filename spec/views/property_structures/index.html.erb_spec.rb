require 'spec_helper'

describe "property_structures/index" do
  before(:each) do
    assign(:property_structures, [
      stub_model(PropertyStructure,
        :property_id => 1,
        :structure_id => 2,
        :cantidad => 3
      ),
      stub_model(PropertyStructure,
        :property_id => 1,
        :structure_id => 2,
        :cantidad => 3
      )
    ])
  end

  it "renders a list of property_structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
