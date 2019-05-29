# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  raise ArgumentError if n < 0

  if n == 0
    return 1
  else
    return n * (factorial(n - 1))
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s == ""
    return ""
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s, high_index: nil, low_index: nil)
  high_index ||= s.length - 1
  low_index ||= 0
  return s if high_index <= low_index

  s[high_index], s[low_index] = s[low_index], s[high_index]
  high_index -= 1
  low_index += 1
  return reverse_inplace(s, high_index: high_index, low_index: low_index)
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
  if s == ""
    return true
  elsif s[0] == "(" && s[-1] == ")"
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
  elsif array[0] == value
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
  elsif s[0] == s[-1]
    return is_palindrome(s[1..-2])
  else
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  if n / 10 == 0 || m / 10 == 0
    if n % 10 == m % 10
      return 1
    else
      return 0
    end
  end

  if n % 10 == m % 10
    return 1 + digit_match(n / 10, m / 10)
  else
    return 0 + digit_match(n / 10, m / 10)
  end
end
