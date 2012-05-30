require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :url => "MyString",
      :property_id => 1
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => videos_path(@video), :method => "post" do
      assert_select "input#video_url", :name => "video[url]"
      assert_select "input#video_property_id", :name => "video[property_id]"
    end
  end
end
