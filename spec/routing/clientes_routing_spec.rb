require "spec_helper"

describe ClientesController do
  describe "routing" do

    it "routes to #index" do
      get("/clientes").should route_to("clientes#index")
    end

    it "routes to #new" do
      get("/clientes/new").should route_to("clientes#new")
    end

    it "routes to #show" do
      get("/clientes/1").should route_to("clientes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/clientes/1/edit").should route_to("clientes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/clientes").should route_to("clientes#create")
    end

    it "routes to #update" do
      put("/clientes/1").should route_to("clientes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/clientes/1").should route_to("clientes#destroy", :id => "1")
    end

  end
end
