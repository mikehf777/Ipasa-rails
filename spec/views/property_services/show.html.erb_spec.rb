require 'spec_helper'

describe "property_services/show" do
  before(:each) do
    @property_service = assign(:property_service, stub_model(PropertyService,
      :property_id => 1,
      :service_id => 2,
      :costo => 1.5,
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/MyText/)
  end
end
