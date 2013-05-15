require "spec_helper"

describe ImportantDatesController do
  describe "routing" do

    it "routes to #index" do
      get("/important_dates").should route_to("important_dates#index")
    end

    it "routes to #new" do
      get("/important_dates/new").should route_to("important_dates#new")
    end

    it "routes to #show" do
      get("/important_dates/1").should route_to("important_dates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/important_dates/1/edit").should route_to("important_dates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/important_dates").should route_to("important_dates#create")
    end

    it "routes to #update" do
      put("/important_dates/1").should route_to("important_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/important_dates/1").should route_to("important_dates#destroy", :id => "1")
    end

  end
end
