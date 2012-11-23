require 'spec_helper'

describe "car_names/new" do
  before(:each) do
    assign(:car_name, stub_model(CarName,
      :maker_id => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_names_path, :method => "post" do
      assert_select "input#car_name_maker_id", :name => "car_name[maker_id]"
      assert_select "input#car_name_name", :name => "car_name[name]"
    end
  end
end
