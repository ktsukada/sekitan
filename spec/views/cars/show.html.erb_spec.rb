require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :maker => nil,
      :car_name => nil,
      :grade1 => "Grade1",
      :grade2 => "Grade2",
      :price => 1,
      :notes => "Notes",
      :image1 => "Image1",
      :image2 => "Image2",
      :image3 => "Image3"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Grade1/)
    rendered.should match(/Grade2/)
    rendered.should match(/1/)
    rendered.should match(/Notes/)
    rendered.should match(/Image1/)
    rendered.should match(/Image2/)
    rendered.should match(/Image3/)
  end
end
