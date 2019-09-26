class MusicImporter
  attr_accessor :path
  def initialize(filepath)
    
    @path = filepath
    
  end 
  
  def files
    @files = self.read(@path)
  end 
  
end 