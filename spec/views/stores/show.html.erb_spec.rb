require 'spec_helper'

describe "stores/show" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :company_id => "Company",
      :store => "Store",
      :name => "Name",
      :address => "Address",
      :tel_no => "Tel No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    rendered.should match(/Store/)
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Tel No/)
  end
end
