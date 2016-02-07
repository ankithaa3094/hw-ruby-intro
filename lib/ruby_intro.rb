# When done, submit this entire file to the autograder.

# Part 1

def sum (array)
  # YOUR CODE HERE
  
  if array.empty?
    return 0
  else
     array.inject(0, :+)

  end
end

def max_2_sum (array)
  # YOUR CODE HERE
  sum(array.sort.last(2))
end

def sum_to_n? (array, n)
  # YOUR CODE HERE
  
 # (array.empty? && n.zero?) || array.permutation(2).any? { |a, b| a + b == n }
return false if array.length <= 1
  array.uniq.combination(2).map{ |pair| pair.reduce(:+) }.include?(n)
end




# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
 if s.empty?
  	return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
 end
end
  


def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end

end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price

end

end
