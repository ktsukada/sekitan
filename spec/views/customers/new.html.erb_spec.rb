require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :staff => stub_model(Staff),
      :tel_no => "MyString",
      :address1 => "MyString",
      :address2 => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "select#customer_staff_id", :name => "customer[staff_id]"
      assert_select "input#customer_tel_no", :name => "customer[tel_no]"
      assert_select "input#customer_address1", :name => "customer[address1]"
      assert_select "input#customer_address2", :name => "customer[address2]"
    end
  end
end
