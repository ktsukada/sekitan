require 'debugger'

module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      debugger
      sign_in FactoryGirl.create(:user)
      debugger
    end
  end
end