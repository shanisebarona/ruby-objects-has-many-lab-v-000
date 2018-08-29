class Author 
  attr_accessor :name 
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def self.all
    @@all
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
   self.add_post(post)
  end
  
  def posts 
    @posts
  end
  
  def self.post_count
    binding.pry
    Post.all.count
  end
  
  def author_name
    if self.author
      self.author.name
    else 
      nil
    end
  end
  
   
  
end