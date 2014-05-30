class WelcomeController < ApplicationController
  def index
    @desserts = Dessert.all
  end
end
