require "spec_helper"

describe PostCatsController do
  describe "routing" do

    it "routes to #index" do
      get("/post_cats").should route_to("post_cats#index")
    end

    it "routes to #new" do
      get("/post_cats/new").should route_to("post_cats#new")
    end

    it "routes to #show" do
      get("/post_cats/1").should route_to("post_cats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/post_cats/1/edit").should route_to("post_cats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/post_cats").should route_to("post_cats#create")
    end

    it "routes to #update" do
      put("/post_cats/1").should route_to("post_cats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/post_cats/1").should route_to("post_cats#destroy", :id => "1")
    end

  end
end
