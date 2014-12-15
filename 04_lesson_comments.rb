require 'pp'
require 'json'

# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2


file = open("curriculum.json")
json = file.read

curriculum = JSON.parse(json)

curriculum["units"].each do |unit|
  puts unit["name"]

  unit["lessons"].each do |lesson|
    @comment_count = []
    @lesson_name = lesson["name"]

    lesson["occurrences"].each do |key, value|
      value["comments"].each do |comment|
        @comment_count << comment["user"]
      end
    end

    puts "  #{@lesson_name} - #{@comment_count.size}"
  end
end
