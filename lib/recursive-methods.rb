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
  if s.length == 1
    return false
  elsif s.length == 0
    return true
    # chris!! I realize this would fail if given an initial string like ")(" but i can't figure it out!
  elsif (s[0] == "(" && s[-1] == ")") || (s[0] == ")" && s[-1] == "(")
    return nested(s[1..-2])
  else
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array.length == 0
    return false
  end

  if array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s.length == 1 || s.length == 0
    return true
  end

  if s[0] != s[-1]
    return false
  end

  return is_palindrome(s[1...-1])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
