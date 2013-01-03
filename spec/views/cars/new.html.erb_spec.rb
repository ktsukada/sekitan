require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car,
      :maker => nil,
      :car_name => nil,
      :grade1 => "MyString",
      :grade2 => "MyString",
      :price => 1,
      :notes => "MyString",
      :image1 => "MyString",
      :image2 => "MyString",
      :image3 => "MyString"
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path, :method => "post" do
      assert_select "input#car_maker", :name => "car[maker]"
      assert_select "input#car_car_name", :name => "car[car_name]"
      assert_select "input#car_grade1", :name => "car[grade1]"
      assert_select "input#car_grade2", :name => "car[grade2]"
      assert_select "input#car_price", :name => "car[price]"
      assert_select "input#car_notes", :name => "car[notes]"
      assert_select "input#car_image1", :name => "car[image1]"
      assert_select "input#car_image2", :name => "car[image2]"
      assert_select "input#car_image3", :name => "car[image3]"
    end
  end
end
