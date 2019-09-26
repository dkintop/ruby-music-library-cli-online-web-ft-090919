require 'pry'
class Artist
  attr_accessor :name, :songs 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save
    @@all << self
  end 
  
  def self.create(name)
    instance = Artist.new(name)
    instance.save
    instance
  end  
  
  def add_song(song)
    if song.artist == nil
      song.artist = self
      self.songs << song
    end
  end
end