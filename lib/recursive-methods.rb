require "pry"
# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  raise ArgumentError if n < 0
  if (n == 1) || (n == 0)
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  else
    return s[-1] + reverse(s[0...-1])
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  if s.length == 1 || s.length == 0
    return s
  else
    s[-1] + reverse_inplace(s[1...-1]) + s[0]
  end
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n <= 0
    return 0
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  if s.length == 0
    return true
  elsif s.length == 1
    return false
  elsif s[0] == s[-1]
    return false
  else
    nested(s[1...s.length - 1])
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  return false if array.length == 0
  if array.length == 1
    return true if array[0] == value
  else
    first_half = array[0...(array.length / 2)]
    second_half = array[(array.length / 2)...array.length]
    return true if search(first_half, value) || search(second_half, value)
  end
  return false
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s.length == 0 || s.length == 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    is_palindrome(s[1...s.length - 1])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  match_value = (n % 10 == m % 10) ? 1 : 0
  if n / 10 == 0 || m / 10 == 0
    return match_value
  else
    return match_value + digit_match(n / 10, m / 10)
  end
end
