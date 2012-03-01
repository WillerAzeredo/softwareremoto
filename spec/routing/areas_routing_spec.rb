require "spec_helper"

describe AreasController do
  describe "routing" do

    it "routes to #index" do
      get("/areas").should route_to("areas#index")
    end

    it "routes to #new" do
      get("/areas/new").should route_to("areas#new")
    end

    it "routes to #show" do
      get("/areas/1").should route_to("areas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/areas/1/edit").should route_to("areas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/areas").should route_to("areas#create")
    end

    it "routes to #update" do
      put("/areas/1").should route_to("areas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/areas/1").should route_to("areas#destroy", :id => "1")
    end

  end
end
