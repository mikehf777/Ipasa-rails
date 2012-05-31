require 'spec_helper'

describe "duties/edit" do
  before(:each) do
    @duty = assign(:duty, stub_model(Duty,
      :monto => 1.5,
      :property_id => 1
    ))
  end

  it "renders the edit duty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => duties_path(@duty), :method => "post" do
      assert_select "input#duty_monto", :name => "duty[monto]"
      assert_select "input#duty_property_id", :name => "duty[property_id]"
    end
  end
end
