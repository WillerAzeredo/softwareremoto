require "spec_helper"

describe SituacaosController do
  describe "routing" do

    it "routes to #index" do
      get("/situacaos").should route_to("situacaos#index")
    end

    it "routes to #new" do
      get("/situacaos/new").should route_to("situacaos#new")
    end

    it "routes to #show" do
      get("/situacaos/1").should route_to("situacaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/situacaos/1/edit").should route_to("situacaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/situacaos").should route_to("situacaos#create")
    end

    it "routes to #update" do
      put("/situacaos/1").should route_to("situacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/situacaos/1").should route_to("situacaos#destroy", :id => "1")
    end

  end
end
