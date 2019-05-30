# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: Linear where n is the count of the input number
# Space complexity: Linear because the stacktrace is taking up n amount of space, where n is the count of the input number
def factorial(n)
  raise ArgumentError if n < 0
  if n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: linear, O(n), where n is the length of the input string. The function is being called n times
# Space complexity: linear, O(n), where n is the length of the input string.

def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  else
    return reverse_inplace(s[1..-1]) + s[0]
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
end

# Time complexity: Linear, O(n), where n is the count of the input integer, n
# Space complexity: Same as time complexity
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: worst case scenario, is O(n), where n is the length of the string
# Space complexity: same as time complexity
def nested(s)
  if s.length == 0
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1...-1])
  else
    return false
  end
end

# Time complexity: worst case scenario, is linear, O(n), where n is the length of the array
# Space complexity: same as time complexity
def search(array, value)
  if array == []
    return false
  end
  if array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: worst case scenario is linear, O(n), where n is the length of the string
# Space complexity: same as time complexity
def is_palindrome(s)
  if s == ""
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1...-1])
  else
    return false
  end
end

# Time complexity: logarithmic, or O(log10) since, worst case, the number is divided by 10 during each internal function call
# Space complexity: same as time complexity
def digit_match(n, m)
  temp1 = n % 10
  temp2 = m % 10
  count = 0
  if n < 1 || m < 1
    return count
  elsif temp1 == temp2
    count += 1
    return count + digit_match(n / 10, m / 10)
  else
    return digit_match(n / 10, m / 10)
  end
end
