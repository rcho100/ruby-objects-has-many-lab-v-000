class Author
  attr_accessor :name, :posts

  @@post_count = 0
  def self.post_count
    binding.pry
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
