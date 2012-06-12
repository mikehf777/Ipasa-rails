require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :nombre => "MyString",
      :descripcion => "MyString",
      :type_id => 1
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_nombre", :name => "profile[nombre]"
      assert_select "input#profile_descripcion", :name => "profile[descripcion]"
      assert_select "input#profile_type_id", :name => "profile[type_id]"
    end
  end
end
