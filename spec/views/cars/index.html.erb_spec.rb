require 'spec_helper'

describe "cars/index" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
        :maker_id => "Maker",
        :car_name_id => "Car Name",
        :grade => "Grade"
      ),
      stub_model(Car,
        :maker_id => "Maker",
        :car_name_id => "Car Name",
        :grade => "Grade"
      )
    ])
  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Maker".to_s, :count => 2
    assert_select "tr>td", :text => "Car Name".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
