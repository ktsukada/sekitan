require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Encrypted Password/)
    rendered.should match(/Reset Password Token/)
    rendered.should match(/Sign In Count/)
    rendered.should match(/Current Sign In Up/)
    rendered.should match(/Confirmation Token/)
    rendered.should match(/Unconfirmed Email/)
    rendered.should match(/1/)
    rendered.should match(/Unlock Token/)
    rendered.should match(/Authentication Token/)
  end
end
