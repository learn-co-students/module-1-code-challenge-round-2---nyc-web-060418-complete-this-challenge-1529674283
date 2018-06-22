require 'pry'
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

  def queue_items
    QueueItem.all.select do |queue_item|
      #binding.pry
      queue_item.movie.title == self.title
    end
  end

  def viewers
      #binding.pry
      queue_items.find {|i| i.viewer}
  end

  def average_rating
    avg_rating = 0
    QueueItem.all.find do |queue_item|
      queue_item
    end
  end

end
