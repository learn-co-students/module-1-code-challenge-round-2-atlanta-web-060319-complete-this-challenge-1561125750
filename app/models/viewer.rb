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
# Viewer#queue_items
# this method should return an array of QueueItem 
# instances associated with this instance of Viewer.
  def queue_items
    QueueItem.all.select do |i|
      i.viewer == self 
  end 
end

# Viewer#queue_movies
# this method should return an array of Movie instances in the Viewer's queue.
def queue_movies
  queue_items.collect do |i|
    i.movie
  end 
end 

# Viewer#add_movie_to_queue(movie)
def add_movie_to_queue(movie)
  QueueItem.new(self, movie)
end 
  
end

