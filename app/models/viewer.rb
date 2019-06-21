require "pry"
class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

    #helper method
    def queue_items
      QueueItem.all.select{ |item| item.viewer == self}
    end

    def queue_movies
      queue_items.map{|item|item.movie}
    end

    def add_movie_to_queue(movie)
      QueueItem.new(self,movie)
      #is it added 2wice ? 
    end

    def rate_movie(movie,rating)
      binding.pry
        if queue_items
            if queue_items.map do |queue|
              # binding.pry
              queue.movie == movie
              queue.rating = rating
              end
          else
            QueueItem.new(self,movie,rating)
          end
        end
    end

end
