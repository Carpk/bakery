class Picture < ActiveRecord::Base
  belongs_to :dessert

  def clear_defaults
    defaults_arry = Picture.where(default: true, dessert_id: self.dessert_id ).to_a
    defaults_arry.each do |pic|
      pic.default = false
      pic.save
    end
  end

  def set_as_default
    self.default = true
    self
  end
end

