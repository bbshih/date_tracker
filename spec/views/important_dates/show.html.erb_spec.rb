require 'spec_helper'

describe "important_dates/show" do
  before(:each) do
    @important_date = assign(:important_date, stub_model(ImportantDate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
