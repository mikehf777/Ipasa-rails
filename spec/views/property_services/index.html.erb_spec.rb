require 'spec_helper'

describe "property_services/index" do
  before(:each) do
    assign(:property_services, [
      stub_model(PropertyService,
        :property_id => 1,
        :service_id => 2,
        :costo => 1.5,
        :descripcion => "MyText"
      ),
      stub_model(PropertyService,
        :property_id => 1,
        :service_id => 2,
        :costo => 1.5,
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of property_services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
