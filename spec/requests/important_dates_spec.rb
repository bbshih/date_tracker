require 'spec_helper'

describe "ImportantDates" do
  describe "GET /important_dates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get important_dates_path
      response.status.should be(200)
    end
  end
end
