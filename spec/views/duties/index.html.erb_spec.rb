require 'spec_helper'

describe "duties/index" do
  before(:each) do
    assign(:duties, [
      stub_model(Duty,
        :monto => 1.5,
        :property_id => 1
      ),
      stub_model(Duty,
        :monto => 1.5,
        :property_id => 1
      )
    ])
  end

  it "renders a list of duties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
