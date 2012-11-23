require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :staff_id => "Staff",
      :used_car_id => "Used Car",
      :run => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Staff/)
    rendered.should match(/Used Car/)
    rendered.should match(/1/)
  end
end
