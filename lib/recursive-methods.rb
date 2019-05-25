# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 1 || n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1
  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)
  return s if s.length < 1
  return (s[-1] + reverse_inplace(s[0...-1]))
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2
  end
  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
  if s == ""
    return true
  elsif s.length == 1
    return false
  elsif s[0] == s[-1]
    return false
  else
    return nested(s[1..-2])
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def search(array, value)
  if array.empty?
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def digit_match(n, m)
  if m == 0 || n == 0
    return 0
  end
  if m % 10 == n % 10
    return 1 + digit_match(n / 10, m / 10)
  else
    return digit_match(n / 10, m / 10)
  end
end
