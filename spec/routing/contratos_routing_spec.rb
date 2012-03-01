require "spec_helper"

describe ContratosController do
  describe "routing" do

    it "routes to #index" do
      get("/contratos").should route_to("contratos#index")
    end

    it "routes to #new" do
      get("/contratos/new").should route_to("contratos#new")
    end

    it "routes to #show" do
      get("/contratos/1").should route_to("contratos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contratos/1/edit").should route_to("contratos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contratos").should route_to("contratos#create")
    end

    it "routes to #update" do
      put("/contratos/1").should route_to("contratos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contratos/1").should route_to("contratos#destroy", :id => "1")
    end

  end
end
