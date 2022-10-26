require 'pry'

class Artist
  attr_accessor :name    #able to read and write the name 
  attr_reader :songs
  extend Findable
  extend Memorable::ClassMethods
  include Paramable 
  include Memorable::InstanceMethods
  @@artists = []
 
  def initialize
     super  # when creating a new artist yo add the artist to the artist array and  create an empty array for the artist
    @songs = []
  end

  def self.all     #getter method for the artists     to call it className.all    returns an array of all artists 
    @@artists
  end


  def add_song(song)
    @songs << song      # instance method to add a song to the artist
    song.artist = self # setting an atrist for the song
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
