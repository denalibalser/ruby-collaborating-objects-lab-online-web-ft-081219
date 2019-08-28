class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name_arr = file_name.split(" - ")[1]
    artist_name = file_name_arr[0]
    song_name = file_name_arr[1]
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

    self.artist.add_song(self)
  end

end
