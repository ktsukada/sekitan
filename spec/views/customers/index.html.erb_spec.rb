require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :staff => nil,
        :tel_no => "Tel No",
        :address1 => "Address1",
        :address2 => "Address2"
      ),
      stub_model(Customer,
        :name => "Name",
        :staff => nil,
        :tel_no => "Tel No",
        :address1 => "Address1",
        :address2 => "Address2"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
  end
end
