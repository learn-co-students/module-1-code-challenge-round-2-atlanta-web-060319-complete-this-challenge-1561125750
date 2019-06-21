require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

 space = Movie.new("Space James")
 pretty = Movie.new("pretty")
 men_in_black = Movie.new("Men In Black")

 ace = Viewer.new("Ace")
 mike = Viewer.new("Mike")
 tank = Viewer.new("Tank")

 que1 = QueueItem.new(space, ace, 5)
 que2 = QueueItem.new(pretty, mike, 3)
 que3 = QueueItem.new(men_in_black, tank, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
