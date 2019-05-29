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

# Time complexity: O(n)^2 where n/2 recursive calls are made and each calls slice, which is O(n)
# Space complexity: O(n)^2 where the max depth of the function is n/2, and each level creates a new string slice
def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  else
    s[-1] + reverse_inplace(s[1...-1]) + s[0]
  end
end

# Time complexity: O(n)^2 where n/2 recursive calls are made and each calls slice, which is O(n)
# Space complexity: O(n) where the max depth of the function is n/2,
def reverse_inplace(s)
  left = 0
  right = s.length - 1
  return swap(left, right, s)
end

def swap(left, right, str)
  if right <= left
    return str
  else
    temp = str[left]
    str[left] = str[right]
    str[right] = temp
    swap(left + 1, right - 1, str)
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

# Time complexity: O(n)^2 where n/2 recursive calls are made and each calls slice, which is O(n)
# Space complexity: O(n)^2 where the max depth of the function is n/2

def nested(s)
  return true if s.length == 0
  left = 0
  right = s.length - 1
  return check_parens(left, right, s)
end

def check_parens(left, right, str)
  if str[left] == str[right] || left == right
    return false
  elsif left > right
    return true
  else
    check_parens(left + 1, right - 1, str)
  end
end

# Time complexity: O(n)^2 because there are 2n-1 calls each time and each slices the array
# Space complexity: O(n log n) because at most the algorithm goes log2 n levels deep, and each layer creates a slice
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

# Time complexity: O(n)^2 where n/2 recursive calls are made and each calls slice, which is O(n)
# Space complexity: O(n)^2 where the max depth of the function is n/2, and each level creates a new string slice
def is_palindrome(s)
  return true if s.length == 0
  left = 0
  right = s.length - 1
  return check_letters(left, right, s)
end

def check_letters(left, right, str)
  if str[left] != str[right]
    return false
  elsif left >= right
    return true
  else
    check_letters(left + 1, right - 1, str)
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
