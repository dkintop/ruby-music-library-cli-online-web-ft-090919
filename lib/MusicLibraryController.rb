class MusicLibraryController
  
  def initialize(path = './db/mp3s')
    imported = MusicImporter.new(path)
    imported.import
  end 
  
  def call 
    puts "Welcome to your music library!"
    puts "To list all of your song, enter 'list songs'."
  end
  
end 