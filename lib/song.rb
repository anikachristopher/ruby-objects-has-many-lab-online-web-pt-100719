class Song 
  attr_accessor :artist, :name
  
    @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name(song)
    @songs << song
    song.artist = self 
  end
  
  def songs
    @songs
  end
end