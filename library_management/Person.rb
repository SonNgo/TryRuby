class Person 
  attr_accessor :name, :email, :password, :borrowed_books
  def initialize(name, email, password, borrowed_books=[])
    @name = name
    @email = email
    @password = password
    @borrowed_books = borrowed_books
  end

  def add_book(added_book)
    @borrowed_books.push(added_book)
  end

  def delete_book(turned_book)
    @borrowed_books.map do |book|
      if book.name == turned_book
        @borrowed_books.delete(book)
      end
    end
  end
end
