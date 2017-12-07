class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist_name)
      @artist = Artist.find_or_create_by_name(name)
      artist.add_song.self
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    artist = filename.split(" - ")[2]
    new_song = self.new(title)
    new_song.artist_name = artist
    new_song
  end

end
