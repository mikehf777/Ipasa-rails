require 'spec_helper'

describe "property_structures/new" do
  before(:each) do
    assign(:property_structure, stub_model(PropertyStructure,
      :property_id => 1,
      :structure_id => 1,
      :cantidad => 1
    ).as_new_record)
  end

  it "renders new property_structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => property_structures_path, :method => "post" do
      assert_select "input#property_structure_property_id", :name => "property_structure[property_id]"
      assert_select "input#property_structure_structure_id", :name => "property_structure[structure_id]"
      assert_select "input#property_structure_cantidad", :name => "property_structure[cantidad]"
    end
  end
end
