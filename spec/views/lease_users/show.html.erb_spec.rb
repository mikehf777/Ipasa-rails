require 'spec_helper'

describe "lease_users/show" do
  before(:each) do
    @lease_user = assign(:lease_user, stub_model(LeaseUser,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
