class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genre_count = {}
  @@artist_count = {}
  @@genres = []
  @@artists = []
 
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    a = 0
    b = 0
    @@genres.each do |x|
      if x == "pop"
        a += 1
      elsif x == "rap"
      b += 1 
      else 
        nil 
      end
    end
    z = {"pop" => a, "rap" => b}
    return z 
  end
  
  
end
    