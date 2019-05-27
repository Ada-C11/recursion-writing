# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n is the value of the input
# Space complexity: O(1) because there's nothing storing the result
def factorial(n)
  return 1 if n == 0
  return 1 if n == 1
  raise ArgumentError if n < 0
  return n * factorial(n - 1)
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(n) where n is the length of s
def reverse(s)
  return s if s.length == 0
  last = s[-1]
  s = s[0..-2]
  reversed_string = last + reverse(s)
  return reversed_string
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(1)
def reverse_inplace(s)
  return s if s.length == 0
  return s if s.length == 1

  reverse_helper(s, 0, s.length - 1)
  return s
end

def reverse_helper(s, first_index, last_index)
  return if first_index > last_index

  temp = s[first_index]
  s[first_index] = s[last_index]
  s[last_index] = temp
  reverse_helper(s, first_index + 1, last_index - 1)
end

# Time complexity: O(n) where n is the value of the input
# Space complexity: O(1)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  return 2 + bunny(n - 1)
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(1)
def nested(s)
  return true if s == ""
  return false if !s.include?("(")
  return false if !s.include?(")")
  s.sub!("(", "")
  s.sub!(")", "")
  return nested(s)
end

# Time complexity: O(n) where n is the length of the array
# Space complexity: O(1) because only the variable last storing one element of the array
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  last = array.pop
  return true if last == value
  return search(array, value)
end

# Time complexity: O(n) where is the length of s
# Space complexity: O(1) because there's no variable storing the string
def is_palindrome(s)
  return true if s.empty?
  if s[0] == s[-1]
    s.sub!(s[0], "")
    if s.length >= 1
      s.sub!(s[-1], "")
    end
    is_palindrome(s)
  else
    return false
  end
end

# Time complexity: O(n) where n is the lenght of the smaller number
# Space complexity: O(1) because there's no variable storing the values of the numbers
def digit_match(n, m)
  return 0 if n == 0 || m == 0
  return 1 + digit_match(n / 10, m / 10) if n % 10 == m % 10
  return digit_match(n / 10, m / 10)
end
