class Picture < ActiveRecord::Base
  belongs_to :dessert
  before_save :clear_defaults

  def clear_defaults
    defaults_arry = Picture.where(default: true, dessert_id: self.dessert_id )
    defaults_arry.update_all(default: false)
  end

  def set_as_default
    self.default = true
    self
  end
end

