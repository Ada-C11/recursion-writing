# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) factorial will be called n number of times, and everything within the function is constant
# Space complexity: O(n) n number of stack frames will be used
def factorial(n)
  if n == 1 || n == 0
    return 1
  elsif n < 0
    raise ArgumentError
  end
  return n * factorial(n - 1)
end

# Time complexity: O(n), where n is the length of s, reverse will get called n/2 times
# Space complexity: O(n)? where n is the length of s. A new stack frame will be used each call, and by slicing into the array a new array is created during each call, which i think would make it 0(2n)
def reverse(s)
  if s.length == 1 || s.length == 0
    return s
  end
  return s[-1] + reverse(s[1...-1]) + s[0]
end

# Time complexity: O(n), where n is the length of s, reverse will get called n/2 times
# Space complexity: O(n) where n is the length of s, n/2 number of stack frames will be used. Unless you are using a language that utilizes tail recursion, then the space complexity would be constant
def r_reverse_inplace(s, i)
  temp = s[i]
  s[i] = s[s.length - 1 - i]
  s[s.length - 1 - i] = temp
  return s if i == s.length / 2
  return r_reverse_inplace(s, i + 1)
end

def reverse_inplace(s)
  i = 0
  return s if s.length == 0
  return r_reverse_inplace(s, i)
end

# Time complexity: O(n) factorial will be called n number of times, and everything within the function is constant
# Space complexity: O(n) n number of stack frames will be used
def bunny(n)
  if n == 1
    return 2
  elsif n == 0
    return 0
  end
  return 2 + (bunny(n - 1))
end

# Time complexity: O(n), where n is the length of s, nested will get called n/2 times
# Space complexity: O(n) where n is the length of s. A new stack frame will be used each call, and by slicing into the array a new array is created during each call, which i think would make it 0(2n)
def nested(s)
  matches = { "(" => ")", "{" => "}", "[" => "]" }
  return true if !s
  return false if matches[s[0]] != s[-1] || s.length == 1
  return nested(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(n),
def search(array, value)
  return false if !array || array.length == 0
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n), where n is the length of s, nested will get called n/2 times
# Space complexity: O(n) where n is the length of s. A new stack frame will be used each call
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  return is_palindrome(s.slice!(1...-1))
end

# Time complexity: O(log10 n) where n is the smaller number between n and m, each call to r_didget_match divids both numbres by 10 and terminates when wither becomes 0.
# Space complexity: O(log10 n) where n is the smaller number between n and m,  Unless you are using a language that utilizes tail recursion, then the space complexity would be constant.

def r_didget_match(n, m, t)
  if n == 0 || m == 0
    return t
  elsif n % 10 == m % 10
    t += 1
  end
  return r_didget_match((n / 10), (m / 10), t)
end

def digit_match(n, m)
  t = 0
  return r_didget_match(n, m, t)
end
