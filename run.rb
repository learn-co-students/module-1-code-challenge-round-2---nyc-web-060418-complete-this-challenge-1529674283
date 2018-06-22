require_relative './app/models/movie.rb'
require_relative './app/models/queue_item.rb'
require_relative './app/models/viewer.rb'

giles = Viewer.new('my_username')
movie1 = Movie.new('movie1')

queue = QueueItem.new(giles, movie1)
 othermovie = Movie.new('othermovie')

giles.add_movie_to_queue(othermovie)
#p giles.queue_items
p movie1.viewers
