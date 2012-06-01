require 'spec_helper'

describe "lease_users/new" do
  before(:each) do
    assign(:lease_user, stub_model(LeaseUser,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new lease_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lease_users_path, :method => "post" do
      assert_select "input#lease_user_user_id", :name => "lease_user[user_id]"
    end
  end
end
