class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  #helper method
  def queue_items
    QueueItem.all.select{ |item| item.movie == self}
  end

  def viewers
      queue_items.map{|item| item.viewer}
  end


  def average_rating
    rating = 0
    all_queue = queue_items.map do |queue|
      rating  += queue.rating
  end
    rating = rating.to_f/ all_queue.length
  end

  def highest_rated
      queue_items.sort_by{|queue| queue.rating}.last
  end


end
