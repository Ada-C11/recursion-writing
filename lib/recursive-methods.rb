# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return 1
  else
    return n * (factorial(n - 1))
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s.length <= 1
    return s
  else
    return rev_str = reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  #   if s.length == 1
  #     return false
  #   elsif s.length == 0
  #     return true
  #   elsif s[0] == ")"
  #     return false
  #   elsif s[-1] == "("
  #     return false
  #   else
  #     return nested(s[1..-1])
  #   end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value, i = 0)
  if i >= array.length
    return false
  end

  if array[i] == value
    return true
  end

  return search(array, value, i += 1)
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
