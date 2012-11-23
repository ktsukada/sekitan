require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :maker_id => "Maker",
      :car_name_id => "Car Name",
      :grade => "Grade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Maker/)
    rendered.should match(/Car Name/)
    rendered.should match(/Grade/)
  end
end
