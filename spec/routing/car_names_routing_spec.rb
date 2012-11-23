require "spec_helper"

describe CarNamesController do
  describe "routing" do

    it "routes to #index" do
      get("/car_names").should route_to("car_names#index")
    end

    it "routes to #new" do
      get("/car_names/new").should route_to("car_names#new")
    end

    it "routes to #show" do
      get("/car_names/1").should route_to("car_names#show", :id => "1")
    end

    it "routes to #edit" do
      get("/car_names/1/edit").should route_to("car_names#edit", :id => "1")
    end

    it "routes to #create" do
      post("/car_names").should route_to("car_names#create")
    end

    it "routes to #update" do
      put("/car_names/1").should route_to("car_names#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/car_names/1").should route_to("car_names#destroy", :id => "1")
    end

  end
end
