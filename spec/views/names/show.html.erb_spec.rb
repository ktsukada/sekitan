require 'spec_helper'

describe "names/show" do
  before(:each) do
    @name = assign(:name, stub_model(Name,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
