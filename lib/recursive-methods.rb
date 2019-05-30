# Authoring recursive algorithms. Add comments including time and space complexity for each method.
require "pry"
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0 || n == 1
  return n * factorial(n - 1)
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(n) where n is the length of the string
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[0..s.length - 2])
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(n) where n is the length of the string
def reverse_inplace(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[0..s.length - 2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(n) where n is the length of the string
def nested(s)
  if s.length == 0
    return true
  else
    if s[0] != s[-1]
      nested(s[1..-2])
    else
      return false
    end
  end
end

# Time complexity: O(n) where n is the length of the array
# Space complexity: O(n) where n is the length of the array
def search(array, value)
  return false if array.length == 0
  if array[0] == value
    return true
  else
    search(array[1..-1], value)
  end

  # else
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(n) where n is the length of the string
def is_palindrome(s)
  if s.length == 1 || s.length == 0
    return true
  else
    if s[0] == s[-1]
      is_palindrome(s[1..-2])
    else
      return false
    end
  end
end

# Time complexity: O(n) where n is the length of the longer array
# Space complexity: O(n) where n is the length of the longer array
def digit_match(n, m)
  counter = 0
  return counter if n[-1] == nil || n[-2] == nil
  if n[-1] == m[-1]
    counter += 1
    digit_match[n[0..-2], m[0..-2]]
  end
end
