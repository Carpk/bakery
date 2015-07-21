class AdminsController < ApplicationController

  def index
    @desserts = Dessert.all
  end
end
