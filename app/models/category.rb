class Category < ActiveRecord::Base
  has_many :transactions



  has_attached_file :image, styles: { medium: "64x64>", small: "32x32>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
