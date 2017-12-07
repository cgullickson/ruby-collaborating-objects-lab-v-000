require 'pry'

class Song
  attr_accessor :name, :artist, :artist_name

  def initialize (name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist_name)
      @artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end

  def self.new_by_filename(filename)
    # binding.pry
    artist_name = filename.split(" - ")[0]
    title = filename.split(" - ")[1]
    new_song = self.new(title)
    new_song.artist_name = artist_name
    binding.pry
    new_song
  end

end
