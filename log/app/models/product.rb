class Product < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "150x150>", :large => "400x400>" }, :default_url => "missing.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
validates :productId, presence: true
validates :quantity, presence: true
validates :name, presence: true
validates :price, presence: true
validates :modelNumber, presence: true
validates :make, presence: true
validates :color, presence: true
validates :storage, presence: true
validates :os, presence: true
validates :specification, presence: true
resourcify
 def self.search(query)
    where("name like ?", "%#{query}%") 
  end

end
