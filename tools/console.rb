require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#viewer - username

blake = Viewer.new("Blake")
majestic = Viewer.new("Majestic")
roman = Viewer.new("Roman")

#movie - title

inception = Movie.new("Inception")
avengers = Movie.new("Endgame")
ff = Movie.new("Fantastic Four")

#queueitems
q1 = QueueItem.new(blake, inception, 4)
q2 = QueueItem.new(majestic, avengers, 3)
q3 = QueueItem.new(roman, ff, 4)
q4 = QueueItem.new(blake, avengers, 5)

test1 = avengers.average_rating
test2 = ff.queue_items
test3 = inception.viewers
test4 = Movie.highest_rated

test5 = QueueItem.all

test6 = Viewer.all
test7 = blake.queue_items
test8 = majestic.queue_movies
test9 = roman.add_movie_to_queue("Endgame")




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
