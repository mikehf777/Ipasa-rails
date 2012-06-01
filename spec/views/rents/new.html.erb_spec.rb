require 'spec_helper'

describe "rents/new" do
  before(:each) do
    assign(:rent, stub_model(Rent,
      :leaseuser_id => 1,
      :descuento => 1.5
    ).as_new_record)
  end

  it "renders new rent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rents_path, :method => "post" do
      assert_select "input#rent_leaseuser_id", :name => "rent[leaseuser_id]"
      assert_select "input#rent_descuento", :name => "rent[descuento]"
    end
  end
end
