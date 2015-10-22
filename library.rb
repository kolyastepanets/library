class Library
  attr_reader :books, :orders, :readers, :authors

  def initialize(books = [], orders = [], readers = [], authors = [])
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end

  def who_often_takes_books
    orders = @orders.collect{|o| o.reader.name}
    readers_names = Hash.new(0)
    orders.each{ |e| readers_names[e] += 1 }
    frequent_reader = readers_names.each { |k, v| puts k if v == readers_names.values.max }
  end

  def the_most_popular_book
    orders = @orders.collect{|o| o.book.title}
    books_titles = Hash.new(0)
    orders.each{ |e| books_titles[e] += 1 }
    most_popular_book = books_titles.each { |k, v| puts k if v == books_titles.values.max }
  end

  def how_many_people_ordered_one_of_the_three_most_popular_book
    orders = @orders.collect{|o| o.book.title}
    books_titles = Hash.new(0)
    orders.map{ |e| books_titles[e] += 1 }
    books_titles.sort_by{|k,v| v}.reverse
    books_titles.each{|k,v| puts "Top book: #{k} has ordered #{v} times"}
  end

end