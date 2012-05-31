require 'spec_helper'

describe "rents/edit" do
  before(:each) do
    @rent = assign(:rent, stub_model(Rent,
      :property_user_id => 1,
      :descuento => 1
    ))
  end

  it "renders the edit rent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rents_path(@rent), :method => "post" do
      assert_select "input#rent_property_user_id", :name => "rent[property_user_id]"
      assert_select "input#rent_descuento", :name => "rent[descuento]"
    end
  end
end
