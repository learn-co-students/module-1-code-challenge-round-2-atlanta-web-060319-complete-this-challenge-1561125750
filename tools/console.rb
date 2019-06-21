require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

incredibles = Movie.new("incredibles")
fast = Movie.new("fast n furious")
hulk = Movie.new("hulk")

cat = Viewer.new("cat")
jack = Viewer.new("jack")
jill = Viewer.new("jill")

ca2 = QueueItem.new(incredibles, cat, 5)
ca3 = QueueItem.new(fast, cat, 2)
ca4 = QueueItem.new(hulk, cat, 2)

ja1 = QueueItem.new(incredibles, jack, 5)
ja1 = QueueItem.new(hulk, jack, 5)
ja1 = QueueItem.new(fast, jack, 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
