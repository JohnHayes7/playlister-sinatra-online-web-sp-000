class Artist < ActiveRecord::Base
  # include Slugified::Instance_methods
  has_many :songs
  has_many :genres, through: :songs
  
  def slug
    self.name.downcase.split.join("-")
  end
  
  def self.find_by_slug(slug)
    name = slug.gsub("-", " ").split.map(&:capitalize).join(" ")
    
    self.all.find_by_name(name)
  end
  
  
end