# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the value of the number
# Space complexity: O(n), where n is the value of the number
def factorial(n)
  if n == 0
    return 1
  elsif n.nil? || n < 0
    raise ArgumentError, "This value is not valid."
  end

  return n * factorial(n-1)

end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), because there will be n layers to the call stack.
def reverse(s)

    if s.length == 0
      return s
    else 
      return s[s.length-1] + reverse(s[0, s.length-1])
    end

end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), because there will be n layers to the call stack.
def reverse_inplace(s)

  if s.length == 0
    return s
  else 
    return s[s.length-1] + reverse(s[0, s.length-1])
  end

end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    if n % 2 == 0
      return 0
    else
      return n + bunny(2-1)
    end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
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
