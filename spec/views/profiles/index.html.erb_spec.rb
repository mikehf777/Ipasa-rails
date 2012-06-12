require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :type_id => 1
      ),
      stub_model(Profile,
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :type_id => 1
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
