# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n), err, does the stack take up a lot of space? theres n numbers of calls
def factorial(n)
  raise ArgumentError, "cant be negative number" if 0 > n
  if n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: o(n) where n is the length of the string
# Space complexity: o(n) because it creates "temp" string to return
def reverse(s)
  return s if s == ""
  if s.length == 1
    return s
  else
    return temp = s[-1] + reverse(s[0...-1])
  end
end

# Time complexity: O(n)
# Space complexity: constant, cause its in place, although, once again, it makes s.length stack calls, so does that mean its O(n) because it takes a place in the stack that many times?
def reverse_inplace(s)
  return s if s == ""
  return s[-1] + reverse_inplace(s[0...-1])
end

# Time complexity: O(n)
# Space complexity: O(1) (or O(n) cause it has that count to create and return?)
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n) (well, O(n/2))
# Space complexity: O(1)
def nested(s)
  # maybe note to future self s[1...-1] is the same thing as s[1..-2] so count dots
  if (s.length == 2 && s[0] == "(" && s[-1] == ")") || s.length == 0
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1...-1])
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def search(array, value)
  if array.length == 0
    return false
  elsif array.length >= 1 && array[0] == value
    return true
  else
    return search(array[1...array.length], value)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
  if (s.length == 3 && s[0] == s[-1]) || (s.length == 2 && s[0] == s[-1]) || s.length == 0
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1...-1])
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def digit_match(n, m)
  #  if (n < 10 || m < 10) && n % 10 == m % 10
  #  blerg don't need can go straight to
  if (n == 0 || m == 0)
    return 0
  elsif n % 10 == m % 10
    return 1 + digit_match(n / 10, m / 10)
  else
    return 0 + digit_match(n / 10, m / 10)
  end
end
