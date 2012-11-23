require 'spec_helper'

describe "makers/new" do
  before(:each) do
    assign(:maker, stub_model(Maker,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new maker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => makers_path, :method => "post" do
      assert_select "input#maker_name", :name => "maker[name]"
    end
  end
end
