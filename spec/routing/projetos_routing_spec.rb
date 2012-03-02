require "spec_helper"

describe ProjetosController do
  describe "routing" do

    it "routes to #index" do
      get("/projetos").should route_to("projetos#index")
    end

    it "routes to #new" do
      get("/projetos/new").should route_to("projetos#new")
    end

    it "routes to #show" do
      get("/projetos/1").should route_to("projetos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/projetos/1/edit").should route_to("projetos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/projetos").should route_to("projetos#create")
    end

    it "routes to #update" do
      put("/projetos/1").should route_to("projetos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/projetos/1").should route_to("projetos#destroy", :id => "1")
    end

  end
end
