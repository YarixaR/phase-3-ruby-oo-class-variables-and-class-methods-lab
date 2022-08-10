require "pry"
class Song
    
    attr_accessor :name, :artists, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
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

    def self.genre
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
    ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
    monster = Song.new("Monster", "Eminem", "rap")
    lose_yourself = Song.new("lose yourself", "Eminem", "rap")
    binding.pry
end
# initialize  name,artist,genre

