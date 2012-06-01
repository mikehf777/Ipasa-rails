require 'spec_helper'

describe "rents/index" do
  before(:each) do
    assign(:rents, [
      stub_model(Rent,
        :leaseuser_id => 1,
        :descuento => 1.5
      ),
      stub_model(Rent,
        :leaseuser_id => 1,
        :descuento => 1.5
      )
    ])
  end

  it "renders a list of rents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
