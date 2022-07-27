require 'pry'

class Library
  attr_reader :collection
  def initialize
    @collection = [] 
  end

  def add_book(book)
    @collection << book
  end

  def titles
    c = []
    @collection.each do |book|
      c << book.title
    end
    c 
  end
end