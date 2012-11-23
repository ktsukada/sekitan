require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role,
        :user_id => "User",
        :function_id => "Function"
      ),
      stub_model(Role,
        :user_id => "User",
        :function_id => "Function"
      )
    ])
  end

  it "renders a list of roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Function".to_s, :count => 2
  end
end
