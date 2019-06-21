class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def queueitems
    QueueItem.all.select do |queueitem|
    queueitem.viewer == self
    end
  end

  def movies
    self.queueitems.map{|queueitem|queueitem.movie}
  end

  def self.all_usernames
    self.all.map {|x| x.username}
  end



end
