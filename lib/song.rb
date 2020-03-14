class Song
  #get instance variables
  attr_reader :name, :artist, :genre

  #set all class methods
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count
  @@artist_count

  #initialize instance method
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  #get class methods
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end

  #check if hash has property and set value
  def self.check_hash (hash, prop)
    if hash.include?(prop)
      hash[prop] += 1
    else
      hash[prop] = 1
    end
  end

  #create genre hash of property and value
  def self.genre_count
    all_genres = {}
    @@genres.each do |genre|
      check_hash(all_genres, genre)
    end
    all_genres
  end

  #create artist hash of property and value
  def self.artist_count
    all_artists = {}
    @@artists.each do |artist|
      check_hash(all_artists, artist)
    end
    all_artists
  end
end
