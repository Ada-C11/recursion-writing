# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s.length == 0 || s.length == 1
    return s
  else
    return s[-1] + (reverse(s[0..-2]))
  end
end

# Time complexity: ?
# Space complexity: ?

# helper method for keeping track of these indexes!
def reverse_inplace(s, i = 0, j = s.length - 1)
  if i >= j
    return s
  else
    temp = s[i]
    s[i] = s[j]
    s[j] = temp

    return reverse_inplace(s, i += 1, j -= 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n == 0
    return n
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  hash = { "(" => ")" }

  if s == ""
    return true
  elsif s.length == 1 || hash[s[0]] != s[-1]
    return false
  else
    return nested(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array.empty?
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s == "" || s.length == 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  if (n / 10 == 0) || (m / 10 == 0)
    return (n % 10 != m % 10) ? 0 : 1
  else
    if (n % 10 == m % 10)
      return 1 + digit_match(n / 10, m / 10)
    else
      return digit_match(n / 10, m / 10)
    end
  end
end
