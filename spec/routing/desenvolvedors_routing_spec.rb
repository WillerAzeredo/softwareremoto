require "spec_helper"

describe DesenvolvedorsController do
  describe "routing" do

    it "routes to #index" do
      get("/desenvolvedors").should route_to("desenvolvedors#index")
    end

    it "routes to #new" do
      get("/desenvolvedors/new").should route_to("desenvolvedors#new")
    end

    it "routes to #show" do
      get("/desenvolvedors/1").should route_to("desenvolvedors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/desenvolvedors/1/edit").should route_to("desenvolvedors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/desenvolvedors").should route_to("desenvolvedors#create")
    end

    it "routes to #update" do
      put("/desenvolvedors/1").should route_to("desenvolvedors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/desenvolvedors/1").should route_to("desenvolvedors#destroy", :id => "1")
    end

  end
end
