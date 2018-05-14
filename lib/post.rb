class Post
  attr_accessor :title, :author

  def initialize (title)
    @title = title
  end

  def author_name
    if @author == nil
      nil
    else
      self.author.name
    end
  end

  # def author= author
  #   @author = author
  # end
  #
  # def author
  #   @author
  # end
end
