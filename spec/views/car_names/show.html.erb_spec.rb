require 'spec_helper'

describe "car_names/show" do
  before(:each) do
    @car_name = assign(:car_name, stub_model(CarName,
      :maker_id => "Maker",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Maker/)
    rendered.should match(/Name/)
  end
end
