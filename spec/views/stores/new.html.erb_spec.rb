require 'spec_helper'

describe "stores/new" do
  before(:each) do
    assign(:store, stub_model(Store,
      :company => nil,
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :tel_no => "MyString"
    ).as_new_record)
  end

  it "renders new store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path, :method => "post" do
      assert_select "input#store_company", :name => "store[company]"
      assert_select "input#store_name", :name => "store[name]"
      assert_select "input#store_address1", :name => "store[address1]"
      assert_select "input#store_address2", :name => "store[address2]"
      assert_select "input#store_tel_no", :name => "store[tel_no]"
    end
  end
end
