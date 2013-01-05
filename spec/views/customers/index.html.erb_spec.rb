require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :staff => stub_model(Staff, :full_name => 'StaffFullName'),
        :tel_no => "Tel No",
        :address1 => "Address1",
        :address2 => "Address2",
        :birth_day => Date.today,
        :created_at => Time.now
      ),
      stub_model(Customer,
        :name => "Name",
        :staff => stub_model(Staff, :full_name => 'StaffFullName'),
        :tel_no => "Tel No",
        :address1 => "Address1",
        :address2 => "Address2",
        :birth_day => Date.today,
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of customers" do
    render
    #Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "StaffFullName".to_s, :count => 2
    assert_select "tr>td", :text => "Tel No".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
  end
end
