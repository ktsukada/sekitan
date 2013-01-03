require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :tel_no => "Tel No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/Tel No/)
  end
end
