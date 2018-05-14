class Post
  attr_accessor :title, :author

  def initialize (title)
    @title = title
  end

  def author_name
    self.author.name
  end

  # def author= author
  #   @author = author
  # end
  #
  # def author
  #   @author
  # end
end
