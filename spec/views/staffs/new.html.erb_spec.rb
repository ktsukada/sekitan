require 'spec_helper'

describe "staffs/new" do
  before(:each) do
    assign(:staff, stub_model(Staff,
      :store => nil
    ).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path, :method => "post" do
      assert_select "input#staff_store", :name => "staff[store]"
    end
  end
end
