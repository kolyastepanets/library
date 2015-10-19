require 'yaml'
require_relative './data'
require_relative './library'

puts "Opening file"
  begin
    f = File.open('library.yaml', 'r')
    library = YAML::load f.read
  rescue
    puts 'Failed'
    library = data
    puts "Loaded default data"
  else
      puts "Ok."
  ensure
    f.close unless f.nil?
  end

puts "Reader who ofter takes books:"
  library.who_often_takes_books

puts "The most popular book:"
  library.the_most_popular_book

puts "People who ordered one of the three most popular books"
  library.how_many_people_ordered_one_of_the_three_most_popular_book

puts "Saved all data to file"
  begin
    f = File.open('library.yaml', 'w')
    f.write library.to_yaml
    puts "Completed!"
  ensure
    f.close unless f.nil?
  end