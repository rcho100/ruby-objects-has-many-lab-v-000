class Artist
  attr_accessor :name, :songs

  @@song_count = []
  def self.song_count
    @@song_count.size
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count << song
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
