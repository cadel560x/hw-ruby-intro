# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
return arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
  return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
return true
else
return false
end
end

# Part 3

class BookInStock
attr_accessor :isbn
attr_accessor :price

def initialize(isbn, price)
raise ArgumentError, 
"Illegal argument" if isbn.empty?  or price <= 0
@isbn = isbn
@price = price
end

def price_as_string
sprintf("$%2.2f", @price)
end
end
