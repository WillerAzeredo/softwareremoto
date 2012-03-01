require "spec_helper"

describe RequerimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/requerimentos").should route_to("requerimentos#index")
    end

    it "routes to #new" do
      get("/requerimentos/new").should route_to("requerimentos#new")
    end

    it "routes to #show" do
      get("/requerimentos/1").should route_to("requerimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/requerimentos/1/edit").should route_to("requerimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/requerimentos").should route_to("requerimentos#create")
    end

    it "routes to #update" do
      put("/requerimentos/1").should route_to("requerimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/requerimentos/1").should route_to("requerimentos#destroy", :id => "1")
    end

  end
end
