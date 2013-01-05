require 'spec_helper'

describe "staffs/edit" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :user => stub_model(User),
      :store => stub_model(Store),
      :staff_no => "MyString"
    ))
  end

  it "renders the edit staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path(@staff), :method => "post" do
      assert_select "select#staff_user_id", :name => "staff[user_id]"
      assert_select "select#staff_store_id", :name => "staff[store_id]"
      assert_select "input#staff_staff_no", :name => "staff[staff_no]"
    end
  end
end
