class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genre_count = {}
  @@artist_count = {}
  @@genres = []
  @@artists = []
 
  def initialize(name, genre, artist)
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def count 
    @@count 
  end
  
  def genres
    @@genres.uniq
  end
  
  def artists
    @@artists.uniq
  end
  
end
    