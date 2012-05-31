require 'spec_helper'

describe "duties/show" do
  before(:each) do
    @duty = assign(:duty, stub_model(Duty,
      :monto => 1.5,
      :property_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
