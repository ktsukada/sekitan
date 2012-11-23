require 'spec_helper'

describe "functions/show" do
  before(:each) do
    @function = assign(:function, stub_model(Function,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
