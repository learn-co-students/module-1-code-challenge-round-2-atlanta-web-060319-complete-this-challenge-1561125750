class QueueItem
    attr_accessor :movie, :viewer, :rating

    @@all = []

    def initialize(movie, viewer, rating = nil)
        @movie = movie
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end



    # def self.all_ratings
    #       self.all.map {|queueitem|queueitem.rating}
    # end
        


    # def queueitem_rating
    #       rating.all.max_by do |movie|
    #       movie.rating
    #     end
    # end




end
