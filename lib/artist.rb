require 'pry'
#defining Artist class
class Artist
  #set attr_accessor for name instance variable
  attr_accessor :name
  #@@all is an empty array that will store all of Artist instances
  @@all = []
  #Artist will initialize with a name and all new instances will shovel into @@all
  def initialize(name)
    @name = name
    @@all << self
  end

  #set instance method for artist to have a name
  def name
    @name
  end

  #returns all songs associate with this Artist
  def songs
    # binding.pry
    Song.all.select {|song| song.artist == self}
  end

  #given a name and genre, create a new song associated with artist
  def new_song(name, genre)
    # binding.pry
    Song.new(name, self, genre) 
  end

  #set instance method where artist has many genres, through songs
  def genres
    # binding.pry
    Genre.all 
  end


  #class method that lists each artist in the class variable
  def self.all
    @@all
  end
#   binding.pry

end