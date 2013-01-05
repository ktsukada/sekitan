require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :account => "Account",
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :sign_in_count => 77,
      :current_sign_in_at => "2013-01-05 08:00:00",
      :last_sign_in_at => "2013-01-05 08:01:00",
      :current_sign_in_ip => "Current Sign In Ip",
      :last_sign_in_ip => "Last Sign in Ip",
      :locked_at => "2013-01-05 08:03:00",
      :failed_attempts => 88
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/77/)
    rendered.should match(/2013-01-05 08:00:00 UTC/)
    rendered.should match(/2013-01-05 08:01:00 UTC/)
    rendered.should match(/Current Sign In Ip/)
    rendered.should match(/Last Sign in Ip/)
    rendered.should match(/2013-01-05 08:03:00 UTC/)
    rendered.should match(/88/)
  end
end
