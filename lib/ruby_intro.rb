# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  arr.each do |n|
    s += n
  end
  s
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == number}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  vowels = ["a", "e", "i", "o", "u"]
  first = string.downcase[0]
  ("a".."z").include?(first) && !vowels.include?(first)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return false unless string.match?(/\A[01]+\z/)
  num = string.to_i(2)
  num % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  # def initialize(isbn, price)
  #   raise ArgumentError, "ISBN cannot be empty" if isbn.nil? || isbn.strip.empty?
  #   raise ArgumentError, "Price must be greater than zero" if price <= 0
  #   @isbn = isbn
  #   @price = price
  # end
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def isbn=(isbn)
    raise ArgumentError, "ISBN cannot be empty" if isbn.nil? || isbn.strip.empty?
    @isbn = isbn
  end

  def price=(price)
    raise ArgumentError, "Price must be greater than zero" if price <= 0
    @price = price
  end

  def price_as_string()
    "$" + sprintf('%.2f', price)
  end
end
