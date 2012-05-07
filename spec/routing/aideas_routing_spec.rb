require "spec_helper"

describe AideasController do
  describe "routing" do

    it "routes to #index" do
      get("/aideas").should route_to("aideas#index")
    end

    it "routes to #new" do
      get("/aideas/new").should route_to("aideas#new")
    end

    it "routes to #show" do
      get("/aideas/1").should route_to("aideas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aideas/1/edit").should route_to("aideas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aideas").should route_to("aideas#create")
    end

    it "routes to #update" do
      put("/aideas/1").should route_to("aideas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aideas/1").should route_to("aideas#destroy", :id => "1")
    end

  end
end
