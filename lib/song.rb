require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist= artist
        @genre = genre
        @@count+= 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @genres
    end

    def self.artists
        @@artists.uniq

    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}

        @@genres.each do |music|
          if genre_hash.has_key?(music)
            genre_hash[music] += 1
          else
            genre_hash[music] = 1
          end
        end
     genre_hash
    end

    def self.artist_count
        artist_hash = {}

        @@artists.each do |person|
          if artist_hash.has_key?(person)
            artist_hash[person] += 1
          else
            artist_hash[person] = 1
          end
        end
      artist_hash
    end
end
