class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genres_no_dup = []
    @@genres.each do |genre|
      genres_no_dup << genre if !genres_no_dup.include?(genre)
    end
    genres_no_dup
  end
  
  def self.artists
    artists_no_dup = []
    @@artists.each do |artist|
      artists_no_dup << artist if !artists_no_dup.include?(artist)
    end
    artists_no_dup
  end
  
  def self.genre_count
    
  end
end