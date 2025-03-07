class Artist 
  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
  end
  
  def songs 
    Song.all.select do |song|
    song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
   performer = Song.new(song_name) 
   add_song(performer)
  end
  
  def self.song_count
    Song.all.count 
  end
end
  