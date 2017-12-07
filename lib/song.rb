class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
    @artist = artist
  end

  def artist_name=(name)
      @artist = Artist.find_or_create_by_name(name)
      artist.add_song.self
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    artist = filename.split(" - ")[2]
    newsong = self.new(title)
    newsong.Artist = artist_name
    newsong
  end

end
