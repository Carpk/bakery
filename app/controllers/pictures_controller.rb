class PicturesController < ApplicationController

  def new
    new_pic = Picture.new
    render :json => new_pic, :status => :ok
  end

end
