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

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  
end
