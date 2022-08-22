class Song

    @@count=0
    @@genres=[]
    @@artists=[]
    attr_reader :name, :genre, :artist

    def initialize(name, artist, genre)
      
        @name=name
        @genre=genre
        @artist=artist
       
        @@artists << artist
        @@genres << genre
        @@count+=1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.map do |genre|
            if genre_count [genre]
                genre_count [genre] +=1
            else
                genre_count [genre] = 1
            end
        end
        genre_count
    end 

    def self.artist_count
        artist_count={}
        @@artists.map do |artist|
            if artist_count [artist]
                artist_count [artist] +=1
            else
                artist_count [artist] =1
            end
        end
        artist_count
    end
end
