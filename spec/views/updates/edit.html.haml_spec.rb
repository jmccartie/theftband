require 'spec_helper'

describe "updates/edit.html.haml" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path(@update), :method => "post" do
      assert_select "input#update_title", :name => "update[title]"
      assert_select "textarea#update_content", :name => "update[content]"
    end
  end
end
