require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

inception = Movie.new("inception")
lionking = Movie.new("lionking")
coolrunnings = Movie.new("coolrunnings")
aladdin = Movie.new("aladdin")


jourdan = Viewer.new("jourdan")
jacque = Viewer.new("jacque")
claudette = Viewer.new("claudette")


queueitem1 = QueueItem.new(inception, jourdan, 9)
queueitem2 = QueueItem.new(lionking, jacque, 7)
queueitem3 = QueueItem.new(coolrunnings, claudette, 5)
queueitem4 = QueueItem.new(lionking, jourdan, 10)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
