require 'spec_helper'

describe "property_users/index" do
  before(:each) do
    assign(:property_users, [
      stub_model(PropertyUser,
        :property_id => 1,
        :user_id => 2
      ),
      stub_model(PropertyUser,
        :property_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of property_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
