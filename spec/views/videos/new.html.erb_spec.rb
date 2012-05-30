require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :url => "MyString",
      :property_id => 1
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => videos_path, :method => "post" do
      assert_select "input#video_url", :name => "video[url]"
      assert_select "input#video_property_id", :name => "video[property_id]"
    end
  end
end
