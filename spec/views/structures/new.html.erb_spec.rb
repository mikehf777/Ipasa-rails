require 'spec_helper'

describe "structures/new" do
  before(:each) do
    assign(:structure, stub_model(Structure,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => structures_path, :method => "post" do
      assert_select "input#structure_nombre", :name => "structure[nombre]"
    end
  end
end
