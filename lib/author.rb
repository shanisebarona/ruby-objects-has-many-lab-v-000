class Author 
  attr_accessor :name 
  
  @@all
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
    
  end
  
  def posts 
    @posts
  end
  
  def post_count
    
  end
end