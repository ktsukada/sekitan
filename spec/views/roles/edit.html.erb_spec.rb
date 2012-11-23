require 'spec_helper'

describe "roles/edit" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :user_id => "MyString",
      :function_id => "MyString"
    ))
  end

  it "renders the edit role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roles_path(@role), :method => "post" do
      assert_select "input#role_user_id", :name => "role[user_id]"
      assert_select "input#role_function_id", :name => "role[function_id]"
    end
  end
end
