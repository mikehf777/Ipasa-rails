require 'spec_helper'

describe "surcharges/index" do
  before(:each) do
    assign(:surcharges, [
      stub_model(Surcharge,
        :folio => "Folio",
        :monto => 1.5,
        :invoice_id => 1
      ),
      stub_model(Surcharge,
        :folio => "Folio",
        :monto => 1.5,
        :invoice_id => 1
      )
    ])
  end

  it "renders a list of surcharges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Folio".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
