require 'spec_helper'

describe "cars/index" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
        :car_name => stub_model(CarName,
                                :name => "CarName",
                                :maker => stub_model(Maker, :name => "MakerName")),
        :grade1 => "Grade1",
        :grade2 => "Grade2",
        :price => 1,
        :notes => "Notes",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3",
        :created_at => Time.now
      ),
      stub_model(Car,
        :car_name => stub_model(CarName,
                                :name => "CarName",
                                :maker => stub_model(Maker, :name => "MakerName")),
        :grade1 => "Grade1",
        :grade2 => "Grade2",
        :price => 1,
        :notes => "Notes",
        :image1 => "Image1",
        :image2 => "Image2",
        :image3 => "Image3",
        :created_at => Time.now
      )
    ])

  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MakerName".to_s, :count => 2
    assert_select "tr>td", :text => "CarName".to_s, :count => 2
    assert_select "tr>td", :text => "Grade1".to_s, :count => 2
    assert_select "tr>td", :text => "Grade2".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Image1".to_s, :count => 2
    assert_select "tr>td", :text => "Image2".to_s, :count => 2
    assert_select "tr>td", :text => "Image3".to_s, :count => 2
  end
end
