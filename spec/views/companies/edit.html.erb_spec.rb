require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :tel_no => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_address1", :name => "company[address1]"
      assert_select "input#company_address2", :name => "company[address2]"
      assert_select "input#company_tel_no", :name => "company[tel_no]"
    end
  end
end
