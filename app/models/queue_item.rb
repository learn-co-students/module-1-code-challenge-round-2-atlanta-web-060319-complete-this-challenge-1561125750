class QueueItem

    attr_accessor :movie, :viewer, :rating

    @@queueitems = []

    def initialize(movie, viewer, rating = nil)
        @movie = movie 
        @viewer = viewer
        @rating = rating
        @@queueitems << self 
    end 

    def self.all
        @@queueitems
    end 

    



end
