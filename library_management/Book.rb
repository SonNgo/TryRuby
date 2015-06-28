class Book
  attr_accessor :name, :quantity
  def initialize(name, quantity = 1)
    @name = name
    @quantity = quantity
  end
end


