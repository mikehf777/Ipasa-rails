require 'spec_helper'

describe "lease_structures/show" do
  before(:each) do
    @lease_structure = assign(:lease_structure, stub_model(LeaseStructure,
      :structure_id => 1,
      :cantidad => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
