class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if self.all.find{|artist_obj| artist_obj.name == artist_name}
      self.all.find{|artist_obj| artist_obj.name == artist_name}
    else
      self.new(artist_name)
    end
  end 


  def save
    @@all << self
  end

  def print_songs()
    puts @songs.collect {|x| x.name}
  end

end
