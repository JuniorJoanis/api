require "spec_helper"

describe ClicksController do
  describe "routing" do

    it "routes to #create" do
      post("/clicks/create").should route_to("clicks#create")
    end
    
  end
end
