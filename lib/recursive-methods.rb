# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
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

# Time complexity: O(n) 
# Space complexity: O(n) - depends on size of input
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
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return n 
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n)?
# Space complexity: O(n)?
def nested(s)
  if s.length == 0
    return true
  else
    if s[0] == "(" && s[-1] == ")"
      return nested(s[1...-1])
    else
      return false
    end
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array.length == 0
    return false
  else
    if array[0] == value
      return true
    else
      return search(array[1..-1], value)
    end
  end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s.length <= 1
    return true
  else
    if s[0] != s[-1]
      return false
    else
      return is_palindrome(s[1...-1])
    end
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end