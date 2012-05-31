require 'spec_helper'

describe "property_structures/show" do
  before(:each) do
    @property_structure = assign(:property_structure, stub_model(PropertyStructure,
      :property_id => 1,
      :structure_id => 2,
      :cantidad => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
