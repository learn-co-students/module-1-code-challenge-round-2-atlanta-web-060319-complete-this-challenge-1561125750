require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



rush_hour = Movie.new("Rush Hour")
spiderman = Movie.new("Spiderman")
avengers = Movie.new("Avengers")

dylan = Viewer.new("DH_05")
max = Viewer.new("Maximus")
blob = Viewer.new("Bloo")

item1 = QueueItem.new(dylan, avengers, 5)
item2 = QueueItem.new(max, rush_hour, 3)
item3 = QueueItem.new(blob, spiderman, 2)
item4 = QueueItem.new(blob, avengers, 2)



new_movie = dylan.add_movie_to_queue(spiderman)
test_01 = spiderman.viewers
test_02 = rush_hour.viewers
test_03 = avengers.viewers
test_04 = new_movie
test_05 = 


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
