require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :staff_id => "MyString",
      :used_car_id => "MyString",
      :run => 1
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_staff_id", :name => "customer[staff_id]"
      assert_select "input#customer_used_car_id", :name => "customer[used_car_id]"
      assert_select "input#customer_run", :name => "customer[run]"
    end
  end
end
