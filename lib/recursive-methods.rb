# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  end
  if n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  if s.empty?
    return ""
  end
  if s.length == 1
    return s[0]
  else
    return s[s.length - 1] + reverse(s[0..s.length - 2])
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse!(s, b, e)
  if b >= e
    return
  else
    temp = s[b]
    s[b] = s[e]
    s[e] = temp
    reverse!(s, b + 1, e - 1)
  end
end

def reverse_inplace(s)
  if s.empty?
    return ""
  end
  if s.length == 1
    return s[0]
  end
  b = 0
  e = s.length - 1
  reverse!(s, b, e)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return 0
  end
  if n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
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
