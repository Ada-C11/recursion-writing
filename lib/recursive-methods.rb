# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n == 0 || n == 1
    return 1
  elsif n < 0
    raise ArgumentError.new("Parameter must be a positive number")
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
  if s.length <= 1
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
      return 2 + bunny(n-1)
    end
end


# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
  if s == ""
    return true
  end
  if s[0] != "(" || s[-1] != ")"
    return false
  end
  return nested(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(^2)
def search(array, value)
  if array.length == 0
    return false
  end
  if value == array[0]
    return true
  else
    return search(array[1..-1], value)
  end
end


# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
  if s == ""
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
  if n == 0 || m == 0
    return 0
  end
  if n%10 == m%10
    value = 1
  else
    value = 0
  end
  return value + digit_match(n/10, m/10)
end