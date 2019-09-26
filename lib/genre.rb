class Genre
  attr_accessor :name 
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
    instance = Genre.new(name)
    instance.save
    instance
  end  
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    song.genre = self unless song.genre == self
    
    @songs << song  if 
  end
end