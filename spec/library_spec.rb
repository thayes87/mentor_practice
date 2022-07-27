require 'rspec'
require './lib/book'
require './lib/library'

RSpec.describe Library do
  it 'exists' do
      library_1 = Library.new

      expect(library_1).to be_instance_of(Library)
  end
  
  it 'has attributes' do
      library_1 = Library.new

      expect(library_1.collection).to eq([])
  end

  it 'has can add a book' do
      library_1 = Library.new
      book_1 = Book.new("Dune", "Frank", "SiFi")

      library_1.add_book(book_1)
      expect(library_1.collection).to eq([book_1])
  end

  it 'has can find titles' do
    library_1 = Library.new
    book_1 = Book.new("Dune", "Frank", "SiFi")
    book_2 = Book.new("Dracula ", "Bram", "Fiction")
    book_3 = Book.new("Dune 2", "Frank", "SiFi")
    titles = ["Dune", "Dracula ", "Dune 2"]

    library_1.add_book(book_1)
    library_1.add_book(book_2)
    library_1.add_book(book_3)
    expect(library_1.titles).to eq(titles)
  end
end  