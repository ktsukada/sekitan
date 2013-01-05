require 'spec_helper'

describe "staffs/show" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :user => nil,
      :full_name => 'Full Name',
      :store => stub_model(Store, :name => 'Store Name'),
      :staff_no => "Staff No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/Store Name/)
    rendered.should match(/Staff No/)
  end
end
