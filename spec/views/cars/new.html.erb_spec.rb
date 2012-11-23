require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car,
      :maker_id => "MyString",
      :car_name_id => "MyString",
      :grade => "MyString"
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path, :method => "post" do
      assert_select "input#car_maker_id", :name => "car[maker_id]"
      assert_select "input#car_car_name_id", :name => "car[car_name_id]"
      assert_select "input#car_grade", :name => "car[grade]"
    end
  end
end
