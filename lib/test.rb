require_relative 'airplane.rb'
require 'pry'


little_plane = Airplane.new('Cessna', 100, 180)

little_plane.start
binding.pry
little_plane.start
