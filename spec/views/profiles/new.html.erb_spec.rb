require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :nombre => "MyString",
      :descripcion => "MyString",
      :type_id => 1
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_nombre", :name => "profile[nombre]"
      assert_select "input#profile_descripcion", :name => "profile[descripcion]"
      assert_select "input#profile_type_id", :name => "profile[type_id]"
    end
  end
end
