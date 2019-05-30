# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n  is the size of the input
# Space complexity: O(n)
def factorial(n)
  if n == 0
    return 1
  elsif n < 0
    raise ArgumentError
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n) where n is the length of the input string
# Space complexity: O(n) where n is the length of the input string
def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  else
    return s[-1] + reverse(s[1..s.length - 2]) + s[0]
  end
end

# Time complexity: ?
# Space complexity: ?
# def reverse_inplace(s)
#   if i >= j
#     return s
#   else
#     return reverse(s)
#   end
# end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n == 0
    return n
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  if s == ""
    return true
  elsif s[-1] == s[0]
    return false
  else
    return nested(s[1..s.length - 2])
  end
  return true
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array[0] == value
    return true
  elsif array == []
    return false
  else
    return search(array[1..array.length], value)
  end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s[0] != s[-1]
    return false
  elsif s.length <= 2
    return true
  else
    return is_palindrome(s[1..s.length - 2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
