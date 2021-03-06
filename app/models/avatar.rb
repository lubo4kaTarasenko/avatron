class Avatar < ApplicationRecord
  def resize_image(size)
    self.url.sub(/\/upload\//, "/upload/w_#{size},h_#{size},c_fit/")
  end

  belongs_to :user
  has_one :user_phone
end
