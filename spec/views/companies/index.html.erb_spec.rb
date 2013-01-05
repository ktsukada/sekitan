require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :tel_no => "Tel No",
        :created_at => Time.now
      ),
      stub_model(Company,
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :tel_no => "Tel No",
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
  end
end
