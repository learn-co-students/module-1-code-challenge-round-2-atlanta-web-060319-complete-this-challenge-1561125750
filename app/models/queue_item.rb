class QueueItem

    attr_accessor :viewer, :movie, :rating

    @@items = []

    def initialize(viewer, movie, rating = nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@items << self
    end

    def self.all
        @@items
    end


end
