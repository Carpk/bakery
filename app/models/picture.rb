class Picture < ActiveRecord::Base
  belongs_to :dessert

  def self.remove_main(dessert_id)
    all_pics = Picture.where(dessert_id: dessert_id)
    defaulted_pics = Picture.default_pics(all_pics)
    Picture.clear_default(defaulted_pics)
  end

  def self.default_pics(all_pics)
    all_pics.select {|pic| pic.default == true}
  end

  def self.clear_default(defaulted_pics)
    defaulted_pics.map do |pic|
      pic.default = false
      pic.save
    end
  end

end
