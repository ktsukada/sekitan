require 'spec_helper'

describe "stores/index" do
  before(:each) do
    assign(:stores, [
      stub_model(Store,
        :company => stub_model(Company, :name => 'CompanyName'),
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :tel_no => "Tel No",
        :created_at => Time.now

      ),
      stub_model(Store,
        :company => stub_model(Company, :name => 'CompanyName'),
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :tel_no => "Tel No",
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of stores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "CompanyName".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
  end
end
