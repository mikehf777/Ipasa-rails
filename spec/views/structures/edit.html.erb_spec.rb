require 'spec_helper'

describe "structures/edit" do
  before(:each) do
    @structure = assign(:structure, stub_model(Structure,
      :nombre => "MyString"
    ))
  end

  it "renders the edit structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => structures_path(@structure), :method => "post" do
      assert_select "input#structure_nombre", :name => "structure[nombre]"
    end
  end
end
