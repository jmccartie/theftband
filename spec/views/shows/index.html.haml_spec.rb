require 'spec_helper'

describe "shows/index.html.haml" do
  before(:each) do
    assign(:shows, [
      stub_model(Show,
        :location => "Location",
        :link => "Link",
        :venue => "Venue"
      ),
      stub_model(Show,
        :location => "Location",
        :link => "Link",
        :venue => "Venue"
      )
    ])
  end

  it "renders a list of shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
  end
end
