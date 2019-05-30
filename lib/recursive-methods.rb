# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  raise ArgumentError if n < 0

  if n <= 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  return s if s.length <= 1
  new_string = reverse(s[1..-1])
  new_string += s[0]
  return new_string
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  return s if s.length <= 1
  first = s[0]
  s = reverse(s[1..-1])
  s += s[0]
  return s[0...-1] + first
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
