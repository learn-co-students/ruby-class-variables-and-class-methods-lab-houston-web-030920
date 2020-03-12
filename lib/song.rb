class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        # @@name << self
        @@artists << self.artist
        @@genres << self.genre
        @@count += 1

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
        g_hash = {}
        @@genres.each do |key|
            if g_hash.include? (key)
                g_hash[key] +=1
            else
                g_hash[key] = 1
            end
        end
        g_hash
    end

    def self.artist_count
        a_hash = {}
        @@artists.each do |key|
            if a_hash.include? (key)
                a_hash[key] +=1
            else
                a_hash[key] = 1
            end
        end
        a_hash
    end
end