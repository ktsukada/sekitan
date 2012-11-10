require 'spec_helper'

describe "names/new" do
  before(:each) do
    assign(:name, stub_model(Name,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => names_path, :method => "post" do
      assert_select "input#name_name", :name => "name[name]"
    end
  end
end
