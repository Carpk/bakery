class Dessert < ActiveRecord::Base
  has_many :pictures
  has_many :reviews
end
