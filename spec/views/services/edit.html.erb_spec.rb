require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :nombre => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_nombre", :name => "service[nombre]"
    end
  end
end
