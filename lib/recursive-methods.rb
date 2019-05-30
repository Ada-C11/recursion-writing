# Authoring recursive algorithms. Add comments including time and space complexity for each method.

## Don't really understand time and space complexity of recursive functions so I'm leaving that blank for now... will come back!
# Time complexity: ?
# Space complexity: ?
# referenced online
def factorial(n)
  raise ArgumentError if n < 0

  if n <= 1
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
# referenced online
def reverse(s)
  return s if s.length <= 1
  new_string = reverse(s[1..-1])
  new_string += s[0]
  return new_string
end

# Time complexity: ?
# Space complexity: ?
# referenced online
def reverse_inplace(s)
  return s if s.length <= 1
  first = s[0]
  s = reverse(s[1..-1])
  s += s[0]
  return s[0...-1] + first
end

# Time complexity: ?
# Space complexity: ?
# referenced online
def bunny(n)
  raise ArgumentError if n < 0

  return 0 if n == 0

  return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
# first one i'm really writing myself w/o internet
def nested(s)
  return true if s.length == 0
  return false if s.length % 2 == 1

  return false unless s[(s.length / 2 - 1)..(s.length / 2)] == "()"
  return nested(s[0...s.length / 2 - 1] + s[s.length / 2 + 1..-1])
end

# Time complexity: ?
# Space complexity: ?
# did this one
def search(array, value)
  return false if array.length == 0

  return true if array.first == value
  array.shift

  search(array, value)
end

# Time complexity: ?
# Space complexity: ?
# did this one
def is_palindrome(s)
  return true if s.length == 0
  return false if s[0] != s[-1]

  is_palindrome(s[1..-2])
end

# Time complexity: ?
# Space complexity: ?
# this one works but i got it partly online and am working to understand it
def digit_match(n, m)
  raise ArgumentError if n < 0 || m < 0

  if n == 0 && m == 0
    return 1
  else
    result = 0
    result += 1 if n % 10 == m % 10

    if n / 10 == 0 || m / 10 == 0
      return result
    end

    return result + digit_match(n / 10, m / 10)
  end
end
