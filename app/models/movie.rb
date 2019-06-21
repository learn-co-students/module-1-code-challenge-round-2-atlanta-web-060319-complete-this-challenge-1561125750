class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queueitems
    QueueItem.all.select do |queueitem|
    queueitem.movie == self
    end
  end 

  def viewers
    self.queueitems.map{|queueitem|queueitem.viewer}
  end

  def self.all_titles
    self.all.map {|x| x.title}
  end

  


end
