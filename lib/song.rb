class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1 
        @@artists << artist
        @@genres << genre
    end

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
        my_hash = {}
         @@genres.each do |genre|
          if my_hash[genre] 
            my_hash[genre] += 1
        else 
            my_hash[genre] = 1
        end  
    end
    my_hash
    end

    def self.artist_count
        my_hash = {}
        @@artists.each do |song|
            if my_hash[song]
                my_hash[song] +=1 
            else 
                my_hash[song] = 1
            end 
        end 
        my_hash
    end

end 
lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
