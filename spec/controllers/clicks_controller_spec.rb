require 'spec_helper'

describe ClicksController do

  def valid_attributes
    { 
      :click_type => "new",
      :date => "2009-09-24 08:28:43"
    }.to_json
  end
  
  def valid_session
    {}
  end
  
  describe "POST create" do
    describe "with valid params" do
      it "creates a new Click" do
        expect {
          post :create, {:click => valid_attributes}, valid_session
         }.to change(Click, :count).by(1)
      end
      
      it "parse parameters" do
         post :create, {:click => valid_attributes}, valid_session
         parsed_json = JSON.parse(valid_attributes)
         Click.last.date.should == Date.parse(parsed_json["date"])
      end
      
      it "should set the click_type paramter" do
        post :create, {:click => valid_attributes}, valid_session
        Click.last.click_type.should == "new"
      end  
    end
  end

end
