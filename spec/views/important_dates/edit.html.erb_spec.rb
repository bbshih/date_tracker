require 'spec_helper'

describe "important_dates/edit" do
  before(:each) do
    @important_date = assign(:important_date, stub_model(ImportantDate,
      :name => "MyString"
    ))
  end

  it "renders the edit important_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", important_date_path(@important_date), "post" do
      assert_select "input#important_date_name[name=?]", "important_date[name]"
    end
  end
end
