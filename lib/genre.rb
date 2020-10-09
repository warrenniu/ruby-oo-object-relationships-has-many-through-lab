require 'pry'
#defining Genre class
class Genre
    #set attr_accessor for name instance variable
    attr_accessor :name
    #@@all is an empty array that will store all of Genre instances
    @@all = []
    #Genre will initialize with a name and all new instances will shovel into @@all
    def initialize(name)
        @name = name
        @@all << self
    end

    #class method that lists each genre in the class variable
    def self.all
        @@all
    end

    #set instance method for genre to have a name
    def name
      @name
    end

    #instance method where Genre has many songs
    def songs
        # binding.pry
        Song.all
    end

    #instance method where Genre has many artists, through Songs
    def artists
        Artist.all
    end
    # binding.pry


end