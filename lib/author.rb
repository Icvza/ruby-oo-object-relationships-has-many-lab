class Author 
    attr_accessor :name, :post 
    @@all = []
    @@post_count = 0

    def initialize(name)
        @name = name 
        @@all << self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        @@all << post
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(name)
        post = Post.new(name)
        post.author = self
        @@post_count += 1
    end

    def self.post_count
        @@post_count = Post.all.count
    end


    
end
