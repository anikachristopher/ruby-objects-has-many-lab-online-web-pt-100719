class Author
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Posts.all.select do |post|
    post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end
  
  def add_song_by_name(song_name)
  performer = Song.new(song_name) 
  add_song(performer)
  end
  
  def self.song_count
    Song.all.count 
  end
end
  