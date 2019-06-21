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
    QueueItem.all.select do |queue|
      queue.viewer == self
    end
  end

  def queue_movies
  queue_items.map do |queue|
    queue.movie
   end
  end
end
