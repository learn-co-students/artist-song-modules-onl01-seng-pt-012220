require 'pry'

include Memorable::ClassMethods, Findable::ClassMethods, Paramable::InstanceMethods


class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
  #  super
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
