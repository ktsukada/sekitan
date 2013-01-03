require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :account => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :encrypted_password => "MyString",
      :reset_password_token => "MyString",
      :sign_in_count => "MyString",
      :current_sign_in_up => "MyString",
      :confirmation_token => "MyString",
      :unconfirmed_email => "MyString",
      :failed_attempts => 1,
      :unlock_token => "MyString",
      :authentication_token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_account", :name => "user[account]"
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_encrypted_password", :name => "user[encrypted_password]"
      assert_select "input#user_reset_password_token", :name => "user[reset_password_token]"
      assert_select "input#user_sign_in_count", :name => "user[sign_in_count]"
      assert_select "input#user_current_sign_in_up", :name => "user[current_sign_in_up]"
      assert_select "input#user_confirmation_token", :name => "user[confirmation_token]"
      assert_select "input#user_unconfirmed_email", :name => "user[unconfirmed_email]"
      assert_select "input#user_failed_attempts", :name => "user[failed_attempts]"
      assert_select "input#user_unlock_token", :name => "user[unlock_token]"
      assert_select "input#user_authentication_token", :name => "user[authentication_token]"
    end
  end
end
