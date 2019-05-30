# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n == 0
    return 1
  elsif n == -1
    raise ArgumentError, "cannot calculate for a negative number"
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n), where n is equal to the number passed
# Space complexity: O(n), where n is equal to the number passed

def reverse(s)
  if s.length <= 1
    return s
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# Time complexity: O(n), n is the number of characters in the string
# Space complexity: O(n), n is the number of characters in the string

def reverse_inplace(s)
  #will need a helper method
  if s == ""
    return s
  end

  temp = s[0]
  s[0] = s[s.length - 1]
  s[s.length - 1] = temp

  if s.length > 1
    s[1..-2] = reverse_inplace(s[1..-2])
  end
  return s
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

# Time complexity: O(n) where n is the number of bunnies
# Space complexity: O(n) where n is the number of bunnies
def nested(s)
  if s == "" || s == "()"
    return true
  elsif s[0] == "(" && s[-1] == ")" && nested(s[1..-2])
    return true
  else
    return false
  end
end

# Time complexity: O(n) where n is the length of the string
# Space complexity: O(n) where n is the length of the string
def search(array, value)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
