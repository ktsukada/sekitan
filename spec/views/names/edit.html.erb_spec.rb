require 'spec_helper'

describe "names/edit" do
  before(:each) do
    @name = assign(:name, stub_model(Name,
      :name => "MyString"
    ))
  end

  it "renders the edit name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => names_path(@name), :method => "post" do
      assert_select "input#name_name", :name => "name[name]"
    end
  end
end
