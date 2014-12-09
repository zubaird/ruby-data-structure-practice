require 'pp'
require_relative 'curriculum'

# Print out the name of each curriculum unit
#
# Expected output
#
#   Orientation
#   Rails Basics
#   CRUD

CURRICULUM[:units].each do |unit|
  puts unit[:name]
end
