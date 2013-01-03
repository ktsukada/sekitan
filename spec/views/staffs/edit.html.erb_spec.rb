require 'spec_helper'

describe "staffs/edit" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :store => nil
    ))
  end

  it "renders the edit staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path(@staff), :method => "post" do
      assert_select "input#staff_store", :name => "staff[store]"
    end
  end
end
