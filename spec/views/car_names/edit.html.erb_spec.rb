require 'spec_helper'

describe "car_names/edit" do
  before(:each) do
    @car_name = assign(:car_name, stub_model(CarName,
      :maker_id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit car_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_names_path(@car_name), :method => "post" do
      assert_select "input#car_name_maker_id", :name => "car_name[maker_id]"
      assert_select "input#car_name_name", :name => "car_name[name]"
    end
  end
end
