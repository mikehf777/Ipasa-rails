require 'spec_helper'

describe "rent_documents/show" do
  before(:each) do
    @rent_document = assign(:rent_document, stub_model(RentDocument,
      :rent_id => 1,
      :document_id => 2,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Url/)
  end
end
