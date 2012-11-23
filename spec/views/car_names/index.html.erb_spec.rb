require 'spec_helper'

describe "car_names/index" do
  before(:each) do
    assign(:car_names, [
      stub_model(CarName,
        :maker_id => "Maker",
        :name => "Name"
      ),
      stub_model(CarName,
        :maker_id => "Maker",
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Maker".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
