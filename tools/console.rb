require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

titanic = Movie.new("titanic")
fight_club = Movie.new("fight club")
training_day = Movie.new("training day")

jerry = Viewer.new("jerry")
mary = Viewer.new("mary")
ron = Viewer.new("ron")

item1 = QueueItem.new(titanic, jerry, 4)
item2 = QueueItem.new(fight_club, mary, 3)
item3 = QueueItem.new(training_day, ron, 2)

test1 = Viewer.all
test2 = Movie.all
test3 = QueueItem.all
test4 = jerry.movies
test5 = titanic.viewers
test6 = Viewer.all_usernames
test7 = Movie.all_titles




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
