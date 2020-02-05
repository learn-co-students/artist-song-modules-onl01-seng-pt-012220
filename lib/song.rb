require 'pry'

class Song
  extend Memorable::ClassMethod
  include Memorable::InstanceMethod
  extend Findable::ClassMethod
  include Paramable
  

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
