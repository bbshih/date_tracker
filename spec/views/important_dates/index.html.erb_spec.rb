require 'spec_helper'

describe "important_dates/index" do
  before(:each) do
    assign(:important_dates, [
      stub_model(ImportantDate,
        :name => "Name"
      ),
      stub_model(ImportantDate,
        :name => "Name"
      )
    ])
  end

  it "renders a list of important_dates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
