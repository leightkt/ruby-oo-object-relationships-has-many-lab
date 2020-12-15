class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.song_count
        Song.all.reduce(0) do |sum, song|
            if song.artist != nil
                sum + 1
            end
        end
    end
end