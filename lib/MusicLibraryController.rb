class MusicLibraryController
  
  def initialize(path = './db/mp3s')
    imported = MusicImporter.new(path)
    imported.import
  end 
  
  def call 
    puts "Welcome to your music library!"
  end
  
end 