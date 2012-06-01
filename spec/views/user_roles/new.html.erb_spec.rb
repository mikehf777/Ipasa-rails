require 'spec_helper'

describe "user_roles/new" do
  before(:each) do
    assign(:user_role, stub_model(UserRole,
      :user_id => 1,
      :role_id => 1
    ).as_new_record)
  end

  it "renders new user_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_roles_path, :method => "post" do
      assert_select "input#user_role_user_id", :name => "user_role[user_id]"
      assert_select "input#user_role_role_id", :name => "user_role[role_id]"
    end
  end
end
