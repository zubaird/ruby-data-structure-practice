require 'pp'
require_relative 'curriculum'

# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12

CURRICULUM[:units].each do |unit|
  @total_comments = []

  unit[:lessons].each do |lesson|
    @comment_counter = []

    lesson[:occurrences].each do |key, value|
      value[:comments].each do |comment_details|
        @comment_counter << comment_details[:comment]
      end
    end

    @total_comments << @comment_counter.size
  end

  puts "#{unit[:name]} - #{@total_comments.inject(0, :+)}"
end
