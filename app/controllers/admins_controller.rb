class AdminsController < ApplicationController

  def index
    @desserts = Dessert.all.sort
  end
end
