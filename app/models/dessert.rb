class Dessert < ActiveRecord::Base
  has_many :pictures
  has_many :reviews
  before_destroy :delete_pics

  def views_per_day
    (self.views.to_f/((Time.now - self.created_at)/1.day)).round(4)
  end

  def self.filtered_view
    self.all.delete_if {|item| item.disable}
  end

  def self.all_items(admin_id)
    if admin_id
      Dessert.all.sort
    else
      Dessert.filtered_view.sort
    end
  end

  def increment_views
    self.tap { |i| i.views += 1 }.save
  end

  def main_pic
    self.pictures.find {|pic| pic.default == true}.picture_url
  end

  def delete_pics
    self.pictures.map! {|pic| pic.destroy}
  end

  def reset_view_count
    self.tap { |i| i.views = 0 }.save
  end
end
