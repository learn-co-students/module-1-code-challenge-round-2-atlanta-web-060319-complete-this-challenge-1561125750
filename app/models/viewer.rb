class Viewer
  attr_accessor :username

  @@viewers = []

  def initialize(username)
    @username = username
    @@viewers << self
  end

  def self.all
    @@viewers
  end

  def queueitems
    QueueItem.all.select do |item|
      item.viewer == self
    end 
  end 


  def queue_movies
    queueitems.map do |item|
      item.movie 
    end 
  end 

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end 


  
end
