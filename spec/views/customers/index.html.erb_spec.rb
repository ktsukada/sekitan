require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :staff_id => "Staff",
        :used_car_id => "Used Car",
        :run => 1
      ),
      stub_model(Customer,
        :name => "Name",
        :staff_id => "Staff",
        :used_car_id => "Used Car",
        :run => 1
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
    assert_select "tr>td", :text => "Used Car".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
