require 'pry'

class Song
    attr_reader :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        # binding.pry
        if @artist != nil
            @artist.name
        else 
            nil
        end
    end

end

# binding.pry