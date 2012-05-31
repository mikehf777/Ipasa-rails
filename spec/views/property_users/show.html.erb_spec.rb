require 'spec_helper'

describe "property_users/show" do
  before(:each) do
    @property_user = assign(:property_user, stub_model(PropertyUser,
      :property_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
