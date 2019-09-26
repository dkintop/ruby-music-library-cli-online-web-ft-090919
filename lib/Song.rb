class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name 
    artist=(artist)
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
    instance = Song.new(name)
    instance.save
    instance
  end 
  
  
  def artist=(artist)
    if @artist == nil
      @artist = artist
    else
      @artist = @artist
    end
    if self.artist != nil
      @artist.add_song(self)
    end
    @artist
  end
  
  
  
end 