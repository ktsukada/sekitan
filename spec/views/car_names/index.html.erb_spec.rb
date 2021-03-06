require 'spec_helper'

describe "car_names/index" do
  before(:each) do
    assign(:car_names, [
      stub_model(CarName,
        :maker => stub_model(Maker, :name => 'MakerName'),
        :name => "Name",
        :created_at => Time.now
      ),
      stub_model(CarName,
        :maker => stub_model(Maker, :name => 'MakerName'),
        :name => "Name",    
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of car_names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MakerName".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
