require 'yaml'
require_relative './data'
require_relative './library'

puts "Opening file"
  begin
    library = Marshal.load(File.binread('data.saved'))
  rescue
    puts 'Failed'
    library = data
    puts "Loaded default data"
  else
    puts "Ok."
  end

puts "Reader who ofter takes books:"
  library.who_often_takes_books

puts "The most popular book:"
  library.the_most_popular_book

puts "People who ordered one of the three most popular books"
  library.how_many_people_ordered_one_of_the_three_most_popular_book

puts "Saved all data to file"
  begin
    File.open('data.saved', 'wb') {|f| f.write(Marshal.dump(library))}
    puts "Completed!"
  end