require 'spec_helper'

describe "stores/index" do
  before(:each) do
    assign(:stores, [
      stub_model(Store,
        :company_id => "Company",
        :store => "Store",
        :name => "Name",
        :address => "Address",
        :tel_no => "Tel No"
      ),
      stub_model(Store,
        :company_id => "Company",
        :store => "Store",
        :name => "Name",
        :address => "Address",
        :tel_no => "Tel No"
      )
    ])
  end

  it "renders a list of stores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
  end
end
