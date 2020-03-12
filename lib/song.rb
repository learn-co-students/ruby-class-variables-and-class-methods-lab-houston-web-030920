class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor(:name, :artist, :genre)

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end 

    def self.count()
        @@count
    end

    def self.artists()
        artists = []
        @@artists.each do |artist|
            if !artists.include?(artist)
                artists.push(artist)
            end 
        end 
        artists
    end

    def self.genres()
        genres = []
        @@genres.each do |genre|
            if !genres.include?(genre)
                genres.push(genre)
            end
        end
        genres
    end 
    # can totally use `.unique` for this, but I love doing things the hard way :D

    def self.genre_count()
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash.include?(genre) 
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end 
        genre_hash
    end 

    def self.artist_count()
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash.include?(artist)
                artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
            end 
        end 
        artist_hash
    end 

end 