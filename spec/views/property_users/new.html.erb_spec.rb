require 'spec_helper'

describe "property_users/new" do
  before(:each) do
    assign(:property_user, stub_model(PropertyUser,
      :property_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new property_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => property_users_path, :method => "post" do
      assert_select "input#property_user_property_id", :name => "property_user[property_id]"
      assert_select "input#property_user_user_id", :name => "property_user[user_id]"
    end
  end
end
