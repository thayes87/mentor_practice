require './lib/book'

book_1 = Book.new("Dune", "Frank", "SiFi")
book_2 = Book.new("Dracula ", "Bram", "Fiction")
book_3 = Book.new("Dune 2", "Frank", "SiFi")

puts book_1.title
puts book_2.title
puts book_3.title