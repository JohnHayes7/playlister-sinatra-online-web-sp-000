class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs


  def slug
    self.name.downcase.split.join("-")
  end

  def self.find_by_slug(slug)
    name = slug.gsub("-", " ").split.map(&:capitalize).join(" ")

    self.all.find_by_name(name)
  end
end
