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

  @@post_count = 0
  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += @posts.count
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@post_count += @posts.count
    @posts << post
    post.author = self
    post
  end

end

class Post
  attr_accessor :title, :author

  def initialize (title)
    @title = title
  end

end
