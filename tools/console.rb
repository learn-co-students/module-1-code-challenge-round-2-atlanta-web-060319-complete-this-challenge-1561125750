require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

reina = Viewer.new("rere")
austin = Viewer.new("babyface")
ellen = Viewer.new("ellls") 

this_is_40 = Movie.new("This is 40")
sleepy_hollow = Movie.new("Sleep Hollow")
nemo = Movie.new("Nemo")

one = QueueItem.new(reina, nemo, 5)
two = QueueItem.new(austin, this_is_40, 3)
three = QueueItem.new(ellen, sleepy_hollow, 2)
four = QueueItem.new(reina, this_is_40, 8)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
