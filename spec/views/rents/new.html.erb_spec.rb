require 'spec_helper'

describe "rents/new" do
  before(:each) do
    assign(:rent, stub_model(Rent,
      :property_user_id => 1,
      :descuento => 1
    ).as_new_record)
  end

  it "renders new rent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rents_path, :method => "post" do
      assert_select "input#rent_property_user_id", :name => "rent[property_user_id]"
      assert_select "input#rent_descuento", :name => "rent[descuento]"
    end
  end
end
