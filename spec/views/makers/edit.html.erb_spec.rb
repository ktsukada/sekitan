require 'spec_helper'

describe "makers/edit" do
  before(:each) do
    @maker = assign(:maker, stub_model(Maker,
      :name => "MyString"
    ))
  end

  it "renders the edit maker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => makers_path(@maker), :method => "post" do
      assert_select "input#maker_name", :name => "maker[name]"
    end
  end
end
