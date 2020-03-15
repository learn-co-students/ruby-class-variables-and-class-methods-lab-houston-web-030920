require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre  = genre 
        @@count += 1 
        @@genres << @genre 
        @@artists << @artist

    end 

    attr_accessor :name, :artist, :genre 


    def self.count
        @@count  
    end     

    def self.artists
        @@artists.uniq
    end   

   def self.genres
        @@genres.uniq
   end

   def self.genre_count
    genre_count = {}
        @@genres.each do |genre|
    if genre_count[genre]
        genre_count[genre] += 1
    else genre_count[genre] = 1
    end
    end
    return genre_count 
   end 

   def self.artist_count
    artists_count = {}
        @@artists.each do |x|
    if artists_count[x]
        artists_count[x] += 1
    else artists_count[x] = 1
    end
    end
    return artists_count 
   end 



end 