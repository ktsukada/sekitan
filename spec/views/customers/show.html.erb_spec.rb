require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :staff => nil,
      :tel_no => "Tel No",
      :address1 => "Address1",
      :address2 => "Address2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/Tel No/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
  end
end
