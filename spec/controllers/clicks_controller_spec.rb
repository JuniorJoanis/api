require 'spec_helper'

describe ClicksController do

  def valid_attributes
    {  :click => 
         {
           :click_type => "new",
           :date => "2009-09-24 08:28:43"
         }
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
      
      it "assigns a newly created click as @click" do
        post :create, {:click => valid_attributes}, valid_session
        assigns(:click).should be_a(Click)
        assigns(:click).should be_persisted
      end  
    end
  end

end
