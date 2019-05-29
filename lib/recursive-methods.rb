# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n < 0
    raise ArgumentError, "Error!!"
  end

  if n == 0 || n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s.length == 0
    return s
  else
    return s[-1] + reverse(s[0...-1])
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  if s.length == 0
    return s
  else
    return s[-1] + reverse(s[0...-1])
  end
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

# NOT WORKINGGGG!!! Can I get feedback on why this is looping infinitedly (I think?)? Thank you!
# Time complexity: ?
# Space complexity: ?
def nested(s)
  if s.length == 0
    return true
  elsif find_pair(s).nil?
    return false
  end

  if find_pair(s)
    s.slice!(find_pair(s), 2)
    return nested(s)
  end
end

def find_pair(s)
  i = 0
  while i < s.length
    if s[i] == "(" && s[i + 1] == ")"
      return i
    end
    i += 1
  end
  return nil
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
