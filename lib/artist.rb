class Artist
    attr_accessor :name, :songs

    @@all = []
    @@song_count = 0

    def initialize(name)
        @name = name 
        @@all << self  
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @@all << song
        song.artist = self
        @@song_count +=1
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @@song_count +=1
    end 

    def self.song_count
        @@song_count = Song.all.count 
    end




end


