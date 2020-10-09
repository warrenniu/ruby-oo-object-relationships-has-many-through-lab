require 'pry'
#defining Song class
class Song
  #set attr_accessor for name, artist, genre
  attr_accessor :name, :artist, :genre
  #@@all is an empty array that will store all of Song instances
  @@all = []
  #Song will initialize with name, artist, and genre and all new instances will shovel into @@all
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  #class method that lists each song in the class variable
  def self.all
    @@all
  end
#   binding.pry

end