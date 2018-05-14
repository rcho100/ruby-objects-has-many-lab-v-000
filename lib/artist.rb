class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  def self.song_count
    @@song_count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += @songs.count
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += @songs.count
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

class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end
end

class Post
  attr_accessor :author
  def initialize (title)

  end
end
