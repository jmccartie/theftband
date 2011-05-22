require 'spec_helper'

describe "shows/new.html.haml" do
  before(:each) do
    assign(:show, stub_model(Show,
      :location => "MyString",
      :link => "MyString",
      :venue => "MyString"
    ).as_new_record)
  end

  it "renders new show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shows_path, :method => "post" do
      assert_select "input#show_location", :name => "show[location]"
      assert_select "input#show_link", :name => "show[link]"
      assert_select "input#show_venue", :name => "show[venue]"
    end
  end
end
