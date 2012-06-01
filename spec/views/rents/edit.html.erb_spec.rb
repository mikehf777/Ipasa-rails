require 'spec_helper'

describe "rents/edit" do
  before(:each) do
    @rent = assign(:rent, stub_model(Rent,
      :leaseuser_id => 1,
      :descuento => 1.5
    ))
  end

  it "renders the edit rent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rents_path(@rent), :method => "post" do
      assert_select "input#rent_leaseuser_id", :name => "rent[leaseuser_id]"
      assert_select "input#rent_descuento", :name => "rent[descuento]"
    end
  end
end
