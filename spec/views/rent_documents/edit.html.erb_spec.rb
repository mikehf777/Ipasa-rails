require 'spec_helper'

describe "rent_documents/edit" do
  before(:each) do
    @rent_document = assign(:rent_document, stub_model(RentDocument,
      :rent_id => 1,
      :document_id => 1,
      :url => "MyString"
    ))
  end

  it "renders the edit rent_document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rent_documents_path(@rent_document), :method => "post" do
      assert_select "input#rent_document_rent_id", :name => "rent_document[rent_id]"
      assert_select "input#rent_document_document_id", :name => "rent_document[document_id]"
      assert_select "input#rent_document_url", :name => "rent_document[url]"
    end
  end
end
