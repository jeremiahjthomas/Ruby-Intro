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
  
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
