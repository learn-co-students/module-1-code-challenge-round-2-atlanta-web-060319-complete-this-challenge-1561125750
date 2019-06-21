class Movie
  attr_accessor :title

  @@movies = []

  def initialize(title)
    @title = title
    @@movies << self
  end

  def self.all
    @@movies
  end


  def queueitems
    QueueItem.all.select do |item|
      item.movie == self
    end 
  end 

  def viewers
    queueitems.map do |item|
      item.viewer
    end 
  end 

  def ratings
    queueitems.collect do |movie|
      movie.rating
    end 
  
  end 

  def average_rating
    x = ratings.sum
    y = ratings.size 
    x / y
  end 

  # def self.highest_rated
  #   x = Movie.all.collect {|movie| movie.average_rating}
  #   x.max_by

  #   #My process here was to gather an array of 
  #   #all of the average ratings of all the instances of the movie class.
  #   #Then I was going to use max_by to find the one with the highes rating and return that.
  
#   # end 

end
