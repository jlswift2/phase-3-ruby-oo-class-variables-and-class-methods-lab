class Song
    attr_accessor :name, :genre, :artist


    @@count = 0
    @@artists = []
    @@genres = []

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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

    def initialize(name, artist, genre )
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end
end