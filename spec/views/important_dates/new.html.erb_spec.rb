require 'spec_helper'

describe "important_dates/new" do
  before(:each) do
    assign(:important_date, stub_model(ImportantDate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new important_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", important_dates_path, "post" do
      assert_select "input#important_date_name[name=?]", "important_date[name]"
    end
  end
end
