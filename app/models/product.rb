class Product < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "250x350>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  belongs_to :category
  has_many :image_urls

  accepts_nested_attributes_for :image_urls
end

