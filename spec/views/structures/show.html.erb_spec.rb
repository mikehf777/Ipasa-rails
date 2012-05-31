require 'spec_helper'

describe "structures/show" do
  before(:each) do
    @structure = assign(:structure, stub_model(Structure,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
