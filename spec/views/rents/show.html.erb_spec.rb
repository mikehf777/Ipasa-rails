require 'spec_helper'

describe "rents/show" do
  before(:each) do
    @rent = assign(:rent, stub_model(Rent,
      :leaseuser_id => 1,
      :descuento => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
