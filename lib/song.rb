class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def Song.count
        return @@count
    end

    def Song.artists 
        return @@artists.uniq
    end

    def Song.genres
        return @@genres.uniq
    end

    def Song.genre_count
        genre_hash ={}
        @@genres.each do |key|
            if genre_hash.include?(key)
                genre_hash[key] += 1
            else 
                
                genre_hash[key] = 1

            end
        end  
        genre_hash
    
    end
 
    def Song.artist_count
        artist_hash = {}
        @@artists.each do |key|
            if artist_hash.include? (key)
                artist_hash[key] += 1
            else
                artist_hash[key] = 1
            end

        end

        artist_hash
    end
end
