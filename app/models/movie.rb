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

# #   Movie#queue_items
# # # returns an array of all the QueueItem 
# instances that contain this movie
def queue_items
  QueueItem.all.select do |i|
    i.movie == self
end 
end

# Movie#viewers
# returns an array of all of the Viewers with this Movie instance in their queue
def viewers
  queue_items.collect do |i|
    i.viewer
  end 
end 

# Movie#average_rating
# returns the average of all ratings for this instance of Movie
def average_rating
  ratings = queue_items.collect {|i| i.rating}
    ratings.sum.fdiv(ratings.size)
end 

# Movie.highest_rated
# returns the instance of Movie with the highest average ratin



end



