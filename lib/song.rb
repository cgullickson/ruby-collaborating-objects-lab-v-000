class Song
  attr_accessor :name, :artist, :artist_name

  def initialize (name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist_name)
      @artist = Artist.find_or_create_by_name(name)
      artist.add_song(song)
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[2]
    new_song = self.new(title)
    new_song.artist_name = artist_name
    new_song
  end

end
