# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# NOTE: I tried my best with time and space complexity, but it just feels so strange with recursive methods.  Do you have any recommended resources
# discussion time/space complexity, specifically with recursive methods?

# Time complexity: O(n), where n is the number being passed in
# Space complexity: O(n), where n is the number being passed in.  The method returns n * method(n-1).
# So for 4, it would have to store:  4 * method(3), 3 * method(2), 2 * method(1), 1 * method(0) * 0.
def factorial(n)
  raise ArgumentError if n < 0

  if n == 0
    return 1
  else
    return n * (factorial(n - 1))
  end
end

# Time complexity: O(n^2), where n is the length of the string
# Space complexity: I'm not sure what the space complexity is.  I know that it is at least linear for the stack.  I am guessing that it might be O(n^2)
# take into account that we are creating a new string each time
def reverse(s)
  if s == ""
    return ""
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# Time complexity: O(n), where n is the length of the string.
# Space complexity: O(n), where n is the length of the string. No extra space on top of the stack as the string is being changed in place
def reverse_inplace(s, high_index: nil, low_index: nil)
  high_index ||= s.length - 1
  low_index ||= 0
  return s if high_index <= low_index

  s[high_index], s[low_index] = s[low_index], s[high_index]
  high_index -= 1
  low_index += 1
  return reverse_inplace(s, high_index: high_index, low_index: low_index)
end

# Time complexity: O(n), where n is the size of the number
# Space complexity: O(n), where n is the size of the number
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n^2), where n is the size of the string.
# Space complexity: O(n^2), where n is the size of the string. Similarly to reverse(s) I think
def nested(s)
  if s == ""
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1..-2])
  else
    return false
  end
end

# Time complexity: O(n^2), where n is the size of the string.
# Space complexity: O(n^2), where n is the size of the string. Similarly to reverse(s) I think
def search(array, value)
  if array.length == 0
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: O(n^2), where n is the size of the string.
# Space complexity: O(n^2), where n is the size of the string.
def is_palindrome(s)
  if s.length == 1 || s.length == 0
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1..-2])
  else
    return false
  end
end

# Time complexity: O(log[10] n), where n is proportional to the size of the number and smaller than m
# Space complexity: O(log[10] n), where n is proportional to the size of the number and smaller than m
def digit_match(n, m)
  if n / 10 == 0 || m / 10 == 0
    if n % 10 == m % 10
      return 1
    else
      return 0
    end
  end

  if n % 10 == m % 10
    return 1 + digit_match(n / 10, m / 10)
  else
    return 0 + digit_match(n / 10, m / 10)
  end
end
