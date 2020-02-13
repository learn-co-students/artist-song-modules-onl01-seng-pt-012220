require 'pry'

include Memorable::ClassMethods, Findable::ClassMethods, Paramable::InstanceMethods
class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    #super
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
