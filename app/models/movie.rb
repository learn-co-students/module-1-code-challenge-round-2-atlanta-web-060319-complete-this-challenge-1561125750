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

  def queue_items
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    queue_items.map do |item|
    item.viewer
  end
end

  def average_rating
    total = 0
    num_ratings = 0
    queue_items.collect do |item|
      total += item.rating
      num_ratings += 1
  end
  total / num_ratings
end

def self.highest_rated
    QueueItem.all.map {|item| item}.sort_by {|item| item.rating}.last
end

end
