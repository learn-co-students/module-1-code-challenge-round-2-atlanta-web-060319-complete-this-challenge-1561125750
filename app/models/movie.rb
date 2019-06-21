class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|queue| queue.movie == self}
  end

  def viewers
    queue_items.map do |queue|
      queue.viewer
    end
  end

  # def average_rating
  #   rating = 0
  #   all_queue = queue_items.select do |queue|
  #     rating  += queue.rating
  # end
  #   rating / all_queue.length
  # end

  
  # def self.highest_rated
  #   QueueItem.all.map {|queue| queue}.sort_by {|queue| queue.rating}.last
  # end

end



