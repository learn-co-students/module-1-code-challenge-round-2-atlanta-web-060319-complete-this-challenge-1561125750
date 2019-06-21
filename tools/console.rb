require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


vwr1 = Viewer.new("Groot")
vwr2 = Viewer.new("Bruce")
vwr3 = Viewer.new("Mary")
vwr4 = Viewer.new("Ethan")
viewer_test =Viewer.all

m1 = Movie.new("Food - the tummy filler")
m2 = Movie.new("John Wick")
m3 = Movie.new("Mrs Doubtfire")
m4 = Movie.new("Gone in 60 Seconds")
movie_test = Movie.all 

qi1 = QueueItem.new(vwr1,m2,4)
qi2 = QueueItem.new(vwr3,m2,5)
qi3 = QueueItem.new(vwr1,m1,3.5)
qi4 = QueueItem.new(vwr4,m3,4)
queueitem_all = QueueItem.all

vwr1.queue_items
vwr1.queue_movies
m5= Movie.new("City of God")
vwr1.add_movie_to_queue(m5)
m6 = Movie.new("Shots of Tequila")
vwr1.rate_movie(m1,4)#may have issues

q1.viewer
q1.movie
q1.rating


m2.queue_items
m2.viewers
m5= Movie.new("City of God")
m2.average_rating
m2.highest_rated



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
