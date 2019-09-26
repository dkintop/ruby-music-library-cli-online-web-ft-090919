require 'pry'
class MusicImporter
  attr_accessor :path
  def initialize(filepath)
    
    @path = filepath
    
  end 
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  #binding.pry
  end 
  
  
  
end 