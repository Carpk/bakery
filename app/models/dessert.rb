class Dessert < ActiveRecord::Base
  has_many :pictures
  has_many :reviews

  def views_per_day
    (self.views.to_f/((Time.now - self.created_at)/1.day)).round(4)
  end

  def self.filtered_view
    self.all.delete_if {|item| item.disable}
  end
end
