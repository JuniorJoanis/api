class ClicksController < ApplicationController
  before_filter :setup_click, :only => [:create]
  
  # POST /clicks
  def create 
    if @click.save
      render status: 200 
    else
      render text: @click.errors.to_s , status: 400
    end
  end
   
   protected
   
   def setup_click
     raise unless params[:click].present?
     @click = Click.new(click_type: params[:click]["click_type"], date: params[:click]["date"])
   end
end