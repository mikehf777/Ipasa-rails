require 'spec_helper'

describe "duties/new" do
  before(:each) do
    assign(:duty, stub_model(Duty,
      :monto => 1.5,
      :property_id => 1
    ).as_new_record)
  end

  it "renders new duty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => duties_path, :method => "post" do
      assert_select "input#duty_monto", :name => "duty[monto]"
      assert_select "input#duty_property_id", :name => "duty[property_id]"
    end
  end
end
