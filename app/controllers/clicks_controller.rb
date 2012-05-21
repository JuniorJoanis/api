class ClicksController < ApplicationController
  # POST /clicks
  # POST /clicks.json
  def create
     click = JSON.parse (params[:click])
     @click = Click.new(click_type: click["click_type"], date: click["date"])
      
      if @click.save
        render status: 200 
      else
        render text: @click.errors.to_s , status: 500
      end
   end
end