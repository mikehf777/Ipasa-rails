require 'spec_helper'

describe "lease_structures/edit" do
  before(:each) do
    @lease_structure = assign(:lease_structure, stub_model(LeaseStructure,
      :structure_id => 1,
      :cantidad => 1
    ))
  end

  it "renders the edit lease_structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lease_structures_path(@lease_structure), :method => "post" do
      assert_select "input#lease_structure_structure_id", :name => "lease_structure[structure_id]"
      assert_select "input#lease_structure_cantidad", :name => "lease_structure[cantidad]"
    end
  end
end
