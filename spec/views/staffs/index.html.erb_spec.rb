require 'spec_helper'

describe "staffs/index" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :store => nil
      ),
      stub_model(Staff,
        :store => nil
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
