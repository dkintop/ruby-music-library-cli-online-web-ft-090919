require 'pry'
require_relative 'Song.rb'
class MusicLibraryController
  
  def initialize(path = './db/mp3s')
    imported = MusicImporter.new(path)
    imported.import
  end 
  
  def call 
    input = nil 
    while input != 'exit'
    
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = gets.chomp
  
    end
  end
  
  def list_songs
   sorted_songs = Song.all.sort_by {|song| song.name}
    
    sorted_songs.uniq.each.with_index(1) do |song,index|
      puts "#{index}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
  end
  
  
  def list_artists
    sorted_artists = Artist.all.sort_by {|artist| artist.name}
    sorted_artists.each_with_index do |artist, index|
      puts "#{index + 1}. #{artist.name}"
    end 
  end 
  
  
  def list_genres
    sorted_genres = Genre.all.sort_by {|genre| genre.name}
    #binding.pry
    sorted_genres.each_with_index do |genre, index|
      puts "#{index + 1}. #{genre.name}"
    end
  end 
  
  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    artist = gets.chomp
    
    song_list = Song.all.select{|song| song.artist == artist}
    binding.pry
  end 
  
  
end




