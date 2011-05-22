require 'spec_helper'

describe "shows/show.html.haml" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :location => "Location",
      :link => "Link",
      :venue => "Venue"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Venue/)
  end
end
