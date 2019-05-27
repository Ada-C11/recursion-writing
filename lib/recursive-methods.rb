# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - > the function will run as many times as the given number.
# Space complexity: O(1) -> we're not creating new variables but the method is taking up space in the stack until the base case equals true, then the stacks will popped of 1 by 1 starting from the top of the stack.
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    if n < 0
      raise ArgumentError
    elsif n == 1 || n == 0
      return 1
    end
    return n * factorial(n - 1)
end

def fib(n)
  if n < 2
    return n
  else
    return fib(n - 1) + fib(n - 2)
  end
end

# Time complexity: O(n), where n isnthe length of the input
# Space complexity: O(1) because additional space in memory is not being consumed 
def reverse(s)
  # raise NotImplementedError, "Method not implemented"
  if s.nil? || s.length == 0 || s.length == 1
    return s
  else 
    return s[-1] + reverse(s[0...-1])
  end
end

# Time complexity: O(n), where n isnthe length of the input
# Space complexity: O(1) because additional space in memory is not being consumed
def reverse_inplace(s)
    # raise NotImplementedError, "Method not implemented"
    if s.nil? || s.length == 0 || s.length == 1
      return s
    else
      return s[-1] + reverse(s[0...-1]) 
    end
end

# Time complexity: O(n)
# Space complexity: O(1) because additional space in memory is not being consumed
def bunny(n)
  if n == 0 || n.nil?
    return 0
    # if 50 is not equal to 100 (50 * 2)
  else
    return 2 + bunny(n - 1)
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

# Time complexity: O(n) where n is the size of the input
# Space complexity: O(1) because additional space in memory is not being consumed
def is_palindrome(s)
  # raise NotImplementedError, "Method not implemented"
  if s.nil? || s.length == 0 || s.length == 1
    return true
  else
    if s[0] == s[-1]
      is_palindrome(s[1..-2])
    else
      return false
    end
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end

