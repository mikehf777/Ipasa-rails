require 'spec_helper'

describe "types/new" do
  before(:each) do
    assign(:type, stub_model(Type,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => types_path, :method => "post" do
      assert_select "input#type_nombre", :name => "type[nombre]"
    end
  end
end
