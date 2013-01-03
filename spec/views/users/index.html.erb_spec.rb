require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :account => "Account",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :encrypted_password => "Encrypted Password",
        :reset_password_token => "Reset Password Token",
        :sign_in_count => "Sign In Count",
        :current_sign_in_up => "Current Sign In Up",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :failed_attempts => 1,
        :unlock_token => "Unlock Token",
        :authentication_token => "Authentication Token"
      ),
      stub_model(User,
        :account => "Account",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :encrypted_password => "Encrypted Password",
        :reset_password_token => "Reset Password Token",
        :sign_in_count => "Sign In Count",
        :current_sign_in_up => "Current Sign In Up",
        :confirmation_token => "Confirmation Token",
        :unconfirmed_email => "Unconfirmed Email",
        :failed_attempts => 1,
        :unlock_token => "Unlock Token",
        :authentication_token => "Authentication Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Reset Password Token".to_s, :count => 2
    assert_select "tr>td", :text => "Sign In Count".to_s, :count => 2
    assert_select "tr>td", :text => "Current Sign In Up".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmation Token".to_s, :count => 2
    assert_select "tr>td", :text => "Unconfirmed Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unlock Token".to_s, :count => 2
    assert_select "tr>td", :text => "Authentication Token".to_s, :count => 2
  end
end
