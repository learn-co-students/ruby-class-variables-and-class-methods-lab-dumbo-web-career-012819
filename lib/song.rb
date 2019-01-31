require "pry"

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
		@@artists << self.artist
		@@genres << self.genre
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
		genre_count_hash = {}
		genre_count = @@genres.group_by{|genre| genre}
		genre_count.each do |style, amt_of_style|
			genre_count_hash[style] ||= amt_of_style.length
		end
		genre_count_hash
	end

	def self.artist_count
		artist_count_hash = {}
		artist_count = @@artists.group_by{|artist| artist}
		artist_count.each do |style, amt_of_style|
			artist_count_hash[style] ||= amt_of_style.length
		end
		artist_count_hash
	end
end