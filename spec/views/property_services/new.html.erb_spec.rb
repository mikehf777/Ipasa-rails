require 'spec_helper'

describe "property_services/new" do
  before(:each) do
    assign(:property_service, stub_model(PropertyService,
      :property_id => 1,
      :service_id => 1,
      :costo => 1.5,
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new property_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => property_services_path, :method => "post" do
      assert_select "input#property_service_property_id", :name => "property_service[property_id]"
      assert_select "input#property_service_service_id", :name => "property_service[service_id]"
      assert_select "input#property_service_costo", :name => "property_service[costo]"
      assert_select "textarea#property_service_descripcion", :name => "property_service[descripcion]"
    end
  end
end
