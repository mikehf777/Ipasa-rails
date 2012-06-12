require 'spec_helper'

describe "types/edit" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :nombre => "MyString"
    ))
  end

  it "renders the edit type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => types_path(@type), :method => "post" do
      assert_select "input#type_nombre", :name => "type[nombre]"
    end
  end
end
