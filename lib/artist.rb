class Artist 
    attr_accessor :name, :songs

    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
    end
    
    def add_song(song)
        @songs << song 
    end

    def self.all
        @@all
    end 

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        Artist.find(name) ? Artist.find(name) : Artist.create(name) 
    end

    def self.find(name)
        Artist.all.find {|artist| artist.name == name}
    end

    def self.create(name)
       artist = Artist.new(name)
       artist.save
       artist 
    end

    def print_songs
        self.songs.each do |song| 
         puts song.name
        end
    end
end 