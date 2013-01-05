require 'spec_helper'

describe "makers/index" do
  before(:each) do
    assign(:makers, [
      stub_model(Maker,
        :name => "Name",
        :created_at => Time.now
      ),
      stub_model(Maker,
        :name => "Name",
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of makers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
