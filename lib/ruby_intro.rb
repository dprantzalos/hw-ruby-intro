# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.size == 1
  arr.sort[-2..-1].inject(:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if not arr.empty?
    combs = arr.combination(2).to_a
    combs.each do |i|
      return true if sum(i) == n
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if not s.chars.first.match(/^[A-Za-z]*$/)
  (s.chars.first =~ /[A E I O U a e i o u]/) != 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if not s.match(/^[01]*$/)
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price # getters/setters

  def initialize(isbn,price)
    if isbn.to_s == '' || price <= 0
      raise ArgumentError, "Ensure that you are using a valid ISBN and a price greater than 0."
    end
    @isbn, @price = isbn, price
  end
  def price_as_string
    "$%.2f" % @price
  end
end


puts "match=", starts_with_consonant?('a')

