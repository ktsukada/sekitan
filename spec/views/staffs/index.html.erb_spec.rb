require 'spec_helper'

describe "staffs/index" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :full_name => 'Full Name',
        :user => nil,
        :store => stub_model(Store, :name => 'Store Name'),
        :staff_no => "Staff No",
        :created_at => Time.now

      ),
      stub_model(Staff,
        :full_name => 'Full Name',
        :user => nil,
        :store => stub_model(Store, :name => 'Store Name'),
        :staff_no => "Staff No",
         :created_at => Time.now
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Store Name".to_s, :count => 2
    assert_select "tr>td", :text => "Staff No".to_s, :count => 2
  end
end
