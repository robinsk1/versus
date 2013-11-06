require "spec_helper"

describe ComparisonsController do
  describe "routing" do

    it "routes to #index" do
      get("/comparisons").should route_to("comparison#index")
    end

    it "routes to #new" do
      get("/comparison/new").should route_to("comparison#new")
    end

    it "routes to #show" do
      get("/comparison/1").should route_to("comparison#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comparison/1/edit").should route_to("comparison#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comparison").should route_to("comparison#create")
    end

    it "routes to #update" do
      put("/comparison/1").should route_to("comparison#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comparison/1").should route_to("comparisons#destroy", :id => "1")
    end

  end
end
