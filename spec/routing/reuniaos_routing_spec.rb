require "spec_helper"

describe ReuniaosController do
  describe "routing" do

    it "routes to #index" do
      get("/reuniaos").should route_to("reuniaos#index")
    end

    it "routes to #new" do
      get("/reuniaos/new").should route_to("reuniaos#new")
    end

    it "routes to #show" do
      get("/reuniaos/1").should route_to("reuniaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reuniaos/1/edit").should route_to("reuniaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reuniaos").should route_to("reuniaos#create")
    end

    it "routes to #update" do
      put("/reuniaos/1").should route_to("reuniaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reuniaos/1").should route_to("reuniaos#destroy", :id => "1")
    end

  end
end
