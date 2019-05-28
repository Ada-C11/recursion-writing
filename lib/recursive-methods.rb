# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n the number passed as arg
# Space complexity:  O(n) where n the number passed as arg
def factorial(n)
  raise ArgumentError.new() if n < 0
  return n <= 1 ? 1 : n * factorial(n - 1)
end

# Time complexity: O(n) where is the number of chars in the string
# Space complexity:  O(n) where is the number of chars in the string
def reverse(s)
  return "" if s.empty?
  return s[-1] << reverse(s[0...-1])
end

# Time complexity:  O(n) where is the number of chars in the string
# Space complexity:  O(n) where is the number of chars in the string
def reverse_inplace(s, left = 0, right = nil)
  right ||= s.length - 1
  return s if left >= right
  temp = s[right]
  s[right] = s[left]
  s[left] = temp
  return reverse_inplace(s, left + 1, right - 1)
end

# Time complexity:   O(n) where n the number of bunnies passed as arg
# Space complexity:   O(n) where n the number of bunnies passed as arg
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1)
end

# Time complexity:  O(n) where n is the number of chars in string
# Space complexity:  O(n) where n is the number of chars in string
def nested(s, left = 0, right = nil)
  right ||= s.length - 1
  return true if left >= right
  return false if s.length.odd? || s[right] == s[left]
  nested(s, left + 1, right - 1)
end

# Time complexity:  O(n) where is the number of elements in array
# Space complexity:  O(n) where is the number of elements in array
def search(array, value, index = 0)
  if index > array.length - 1
    return false
  end
  if array[index] == value
    return true
  end
  search(array, value, index + 1)
end

# Time complexity:  O(n) where is the number of chars in string
# Space complexity:  O(n) where is the number of chars in string
def is_palindrome(s, left = 0, right = nil)
  right ||= s.length - 1
  return true if right <= left
  return false if s[right] != s[left]
  is_palindrome(s, left + 1, right - 1)
end

# Time complexity: O(log10(n)) where n is the smallest number. Also could be described as O(n) where n is the number digit places in the smallest number (123 = 3 digit places)
# Space complexity: O(log10(n)) where n is the smallest number. Also could be described as O(n) where n is the number digit places in the smallest number (123 = 3 digit places)
def digit_match(n, m)
  return 0 if n == 0 || m == 0
  if n % 10 == m % 10
    counter = 1
  else
    counter = 0
  end
  return counter + digit_match(n / 10, m / 10)
end
