require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name
  end
  
  def self.create
    new_song = Song.new
    new_song.save 
    return new_song
  end
  
  def self.new_by_name(new_name)
    new_song = Song.new
    new_song.name = new_name 
    return new_song
  end
  
  def self.find_by_name 
    @@all.find do |song|
      song.name == song_name
    end
  end
  
  def self.create_by_name 
    @name
  end
  
  def self.alphabetical
  end 
  
  def self.new_from_filename
  end
  
  def self.create_from_filename
  end 
  
  def self.destroy_all
    @@all.clear
  end 

end
