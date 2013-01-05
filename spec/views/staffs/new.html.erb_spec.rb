require 'spec_helper'

describe "staffs/new" do
  before(:each) do
    assign(:staff, stub_model(Staff,
      :user => stub_model(User),
      :store => stub_model(Store),
      :staff_no => "MyString"
    ).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path, :method => "post" do
      assert_select "select#staff_user_id", :name => "staff[user_id]"
      assert_select "select#staff_store_id", :name => "staff[store_id]"
      assert_select "input#staff_staff_no", :name => "staff[staff_no]"
    end
  end
end
