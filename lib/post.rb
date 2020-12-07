require'pry'
class Post

    attr_accessor :name, :author 

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def title
        @name 
    end

    def save
        @@all << self 
    end

    def self.all
        @@all 
    end

    def author_name
       if self.author
        self.author.name
       else
        nil
       end
    end


end

