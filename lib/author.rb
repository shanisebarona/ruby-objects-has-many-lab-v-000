class Author 
  attr_accessor :name 
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
   self.add_post(post)
  end
  
  def posts 
    @posts
  end
  
  def post_count
    Post.all.count
  end
  
   def self.all
    @@all
  end
  
end