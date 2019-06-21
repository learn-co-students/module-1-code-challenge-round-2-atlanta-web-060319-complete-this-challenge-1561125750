class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select  {|queue| queue.viewer == self}
  end
  

  def queue_movies
    queue_items.map {|queue_items| queue_items.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

#   def rate_movie(movie, rating)
#     if queue_items.map do |queue|
#       queue.movie == movie
#       end
#     else
#     QueueItem.new(movie, self, rating)
#   end
# end

end