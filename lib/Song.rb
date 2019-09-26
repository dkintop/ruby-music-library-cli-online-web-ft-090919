class Song 
  attr_accessor :name,  
  
  
  @@all = []
  
  def initialize(name, artist= nil, genre = nil)
    @name = name 
    @genre = genre
    if artist
      self.artist= artist 
    end
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
  
  def artist 
    @artist
  end 
  
  def genre=(genre)
    if @genre == nil
      @genre = genre
    else
      @genre= @genre
    end
    if self.genre != nil
      @genre.add_song(self)
    end
    @genre

  end
  
  def genre 
    @genre 
  end
    
  
  
  
  
  
end 