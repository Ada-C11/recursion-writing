# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the value of the argument passed in (also called 'n').
# Space complexity: O(n), where n is the value of the argument passed in (also called 'n').
def factorial(n)
  if n == 0 || n == 1
    return 1
  elsif n < 0
    raise ArgumentError, "Please enter a number greater than 0."
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n), where n is the length of the input string.
# Space complexity: O(n), where n is the length of the input string.
def reverse(s)
  if s.length <= 1
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: O(n), where n is the length of the input string.
# Space complexity: O(n), where n is the length of the input string.
def reverse_inplace(s)
  if s.length <= 1
    return s
  else
    return s[-1] + reverse(s[1..-2]) + s[0]
  end
end

# Time complexity: O(n), where n is the value of the integer input as n.
# Space complexity: O(n), where n is the value of the integer input as n.
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2
  else 
    return 2 + bunny(n-1)
  end
end

# Time complexity: O(n), where n is the length of the input string.
# Space complexity: O(n), where n is the length of the input string.
def nested(s)
  if s == ""
    return true
  elsif s.length % 2 != 0
    return false
  elsif !(s[0] == "(" && s[-1] == ")")
    return false
  else
    return nested(s[1..-2])
  end
end

# Time complexity: O(n), where n is the length of the array.
# Space complexity: O(n), where n is the length of the array.
def search(array, value)
  if array.length == 0
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: O(n) where n is the length of the input string.
# Space complexity: O(n) where n is the length of the input string.
def is_palindrome(s)
  if s.length <= 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: O(n) where n is the number of digits in the input.
# Space complexity: O(n) where n is the number of digits in the input.
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  if n.length == 0 || m.length == 0
    return 0
  elsif n[-1] == m[-1]
    return 1 + digit_match(n[0..-2], m[0..-2])
  else 
    return digit_match(n[0..-2], m[0..-2])
  end
end
