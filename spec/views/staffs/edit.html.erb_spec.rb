require 'spec_helper'

describe "staffs/edit" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :store_id => "MyString",
      :role_id => "MyString",
      :user_id => "MyString",
      :password => "MyString",
      :name => "MyString",
      :tel_no => "MyString"
    ))
  end

  it "renders the edit staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path(@staff), :method => "post" do
      assert_select "input#staff_store_id", :name => "staff[store_id]"
      assert_select "input#staff_role_id", :name => "staff[role_id]"
      assert_select "input#staff_user_id", :name => "staff[user_id]"
      assert_select "input#staff_password", :name => "staff[password]"
      assert_select "input#staff_name", :name => "staff[name]"
      assert_select "input#staff_tel_no", :name => "staff[tel_no]"
    end
  end
end
