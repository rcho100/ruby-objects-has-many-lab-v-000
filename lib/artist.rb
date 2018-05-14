class Artist
  attr_accessor :name, :songs

  def self.song_count

  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    song 
  end
end

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
end
