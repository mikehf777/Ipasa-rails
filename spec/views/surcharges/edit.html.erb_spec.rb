require 'spec_helper'

describe "surcharges/edit" do
  before(:each) do
    @surcharge = assign(:surcharge, stub_model(Surcharge,
      :folio => "MyString",
      :monto => 1.5,
      :invoice_id => 1
    ))
  end

  it "renders the edit surcharge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => surcharges_path(@surcharge), :method => "post" do
      assert_select "input#surcharge_folio", :name => "surcharge[folio]"
      assert_select "input#surcharge_monto", :name => "surcharge[monto]"
      assert_select "input#surcharge_invoice_id", :name => "surcharge[invoice_id]"
    end
  end
end
