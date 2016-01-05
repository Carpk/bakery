class Picture < ActiveRecord::Base
  belongs_to :dessert
  before_update :clear_main

  def clear_main
    defaults_arry = Picture.where(default: true, dessert_id: self.dessert_id )
    defaults_arry.update_all(default: false)
  end

  def set_as_main
    self.tap { |i| i.default = true }
  end

  def reset_view_count
    self
  end
end

