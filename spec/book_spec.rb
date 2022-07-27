require 'rspec'
require './lib/book'

RSpec.describe Book do
  it 'exists' do
      book_1 = Book.new("Dune", "Frank", "SiFi")

      expect(book_1).to be_instance_of(Book)
  end
  
  it 'has attributes' do
      book_1 = Book.new("Dune", "Frank", "SiFi")

      expect(book_1.title).to eq("Dune")
      expect(book_1.author).to eq("Frank")
      expect(book_1.genre).to eq("SiFi")
  end
end  