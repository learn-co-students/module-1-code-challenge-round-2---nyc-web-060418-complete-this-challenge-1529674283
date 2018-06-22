class QueueItem
  attr_reader :viewer, :movie

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end

  def viewer
    @viewer
  end

  def movie
    @movie
  end

  def rating
    @rating
  end




end
