class ViewerController < ApplicationController
  
  def show
    @site = Site.find_by_name(params[:name])
  end
end
