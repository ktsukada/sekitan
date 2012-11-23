require 'spec_helper'

describe "staffs/index" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :store_id => "Store",
        :role_id => "Role",
        :user_id => "User",
        :password => "Password",
        :name => "Name",
        :tel_no => "Tel No"
      ),
      stub_model(Staff,
        :store_id => "Store",
        :role_id => "Role",
        :user_id => "User",
        :password => "Password",
        :name => "Name",
        :tel_no => "Tel No"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
  end
end
