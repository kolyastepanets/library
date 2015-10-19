#authors
author1 = Author.new("author_name_1", "biography1")
author2 = Author.new("author_name_2", "biography2")
author3 = Author.new("author_name_3", "biography3")
author4 = Author.new("author_name_4", "biography4")

#books
book1 = Book.new("book_title_1", author1)
book2 = Book.new("book_title_2", author2)
book3 = Book.new("book_title_3", author3)
book4 = Book.new("book_title_4", author4)

#readers
reader1 = Reader.new("reader_name_1", "reader1@mail.com", "reader_street_1", "reader_house_1")
reader2 = Reader.new("reader_name_2", "reader2@mail.com", "reader_street_2", "reader_house_2")
reader3 = Reader.new("reader_name_3", "reader3@mail.com", "reader_street_3", "reader_house_3")
reader4 = Reader.new("reader_name_4", "reader4@mail.com", "reader_street_4", "reader_house_4")

#orders
order1 = Order.new(book1, reader1, "1.10")
order2 = Order.new(book4, reader2, "2.10")
order3 = Order.new(book4, reader1, "3.10")
order4 = Order.new(book4, reader1, "3.10")
order5 = Order.new(book4, reader1, "6.10")
order6 = Order.new(book4, reader1, "5.10")
order7 = Order.new(book4, reader2, "4.10")
order8 = Order.new(book1, reader3, "3.10")
order9 = Order.new(book1, reader3, "11.10")
order10 = Order.new(book3, reader4, "12.10")

library = Library.new([book1, book2, book3, book4],
                      [order1, order2, order3, order4, order5, order6, order7, order8, order9, order10],
                      [reader1, reader2, reader3, reader4],
                      [author1, author2, author3, author4])