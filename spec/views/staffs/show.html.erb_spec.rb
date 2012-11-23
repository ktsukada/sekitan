require 'spec_helper'

describe "staffs/show" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :store_id => "Store",
      :role_id => "Role",
      :user_id => "User",
      :password => "Password",
      :name => "Name",
      :tel_no => "Tel No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Store/)
    rendered.should match(/Role/)
    rendered.should match(/User/)
    rendered.should match(/Password/)
    rendered.should match(/Name/)
    rendered.should match(/Tel No/)
  end
end
