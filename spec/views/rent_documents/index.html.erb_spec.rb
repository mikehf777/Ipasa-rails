require 'spec_helper'

describe "rent_documents/index" do
  before(:each) do
    assign(:rent_documents, [
      stub_model(RentDocument,
        :rent_id => 1,
        :document_id => 2,
        :url => "Url"
      ),
      stub_model(RentDocument,
        :rent_id => 1,
        :document_id => 2,
        :url => "Url"
      )
    ])
  end

  it "renders a list of rent_documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
