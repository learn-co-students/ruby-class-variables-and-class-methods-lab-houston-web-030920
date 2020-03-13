require 'pry'

class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name , :artist , :genre

   def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists.push(artist)
    @@genres.push(genre)
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
     my_hash = {}
     @@genres.each { |genre|
       if my_hash[genre]
         my_hash[genre] += 1
       else
         my_hash[genre] = 1
       end
     }
  
      my_hash
   end
     def self.artist_count
       artist_hash = {}
       @@artists.each {|artist|
         if artist_hash[artist]
           artist_hash[artist] += 1
         else 
           artist_hash[artist] = 1
          end
         }
      
     artist_hash
    end
  
end