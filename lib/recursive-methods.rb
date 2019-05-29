require "pry"
# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n recursive calls are made
# Space complexity: O(n) where the stack is n levels deep
def factorial(n)
  raise ArgumentError if n < 0
  if (n == 1) || (n == 0)
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n) where n recursive calls are made
# Space complexity: O(n) where n levels are required, each requiring 1 char less of memory
def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  else
    return s[-1] + reverse(s[0...-1])
  end
end

# Time complexity: O(n) where n/2 recursive calls are made
# Space complexity: O(n) where the max depth of the function is n/2
def reverse_inplace(s)
  if s.length == 1 || s.length == 0
    return s
  else
    s[-1] + reverse_inplace(s[1...-1]) + s[0]
  end
end

# Time complexity: O(n) where n recursive calls are made
# Space complexity: O(n) where the max depth is n
def bunny(n)
  if n <= 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n) where n/2 recursive calls are made
# Space complexity: O(n) where the max depth of the function is n/2
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

# Time complexity: O(n) because there are 2n-1 calls each time.
# Space complexity: O(log n) because at most the algorithm goes log2 n levels deep
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

# Time complexity: O(n) where n/2 recursive calls are made
# Space complexity: O(n) where the max depth of the function is n/2
def is_palindrome(s)
  if s.length == 0 || s.length == 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    is_palindrome(s[1...s.length - 1])
  end
end

# Time complexity: If n < m, time complexity will be O(log10 n) since the number of calls is dependent on how many times the smaller number can be divided by 10
# Space complexity: also O(log10 n) since the depth is proportional to the number of calls
def digit_match(n, m)
  match_value = (n % 10 == m % 10) ? 1 : 0
  if n / 10 == 0 || m / 10 == 0
    return match_value
  else
    return match_value + digit_match(n / 10, m / 10)
  end
end
