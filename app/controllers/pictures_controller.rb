class PicturesController < ApplicationController

  def new
    dessert = Dessert.find_by_name(params[:dessert_id])
    @new_pic = Picture.new
    @new_pic.dessert_id = dessert.id if dessert
    @new_pic
  end

  def create
    Picture.create(picture_params)
  end

  def update
    p "******************************"
    old_default = Picture.where(dessert_id: params[:dessert_id]).select {|pic| pic.default == true}
    old_default.map do |e|
      e.default = false
      e.save
    end
    # old_default.save
    main = Picture.find_by_id(params[:id])
    main.default = true
    main.save
    p "******************************"
  end

  def destroy
    Picture.find_by_id(params[:id]).destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :dessert_id, :picture_url)
  end
end
