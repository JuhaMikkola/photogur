class PicturesController < ApplicationController

  #This is the CONTROLLER. Change this after Routes to define Actions

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  private
  def picture_params
      params.require(:picture).permit(:title, :artist, :url)
  end
  
end