class Glass < ActiveRecord::Base
  attr_accessible :description, :factor, :price, :title, :company, :photo

  has_attached_file :photo

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ["inage/jpg", "image/png", "image/jpeg"]
end
