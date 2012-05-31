require 'spec_helper'

describe "surcharges/show" do
  before(:each) do
    @surcharge = assign(:surcharge, stub_model(Surcharge,
      :folio => "Folio",
      :monto => 1.5,
      :invoice_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Folio/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
