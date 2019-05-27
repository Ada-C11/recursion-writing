# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# *****************************
# Write a method factorial that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

# Time complexity: O(n) where n is n
# Space complexity: O(1)
def factorial(n)

  # e.g. fact(4) = 4 * 3 * 2 * 1 = 24
  return 1 if n == 0

  raise ArgumentError, "value must be 0 or greater" if n < 0

  if n == 0
    return n
  else
    return n * factorial(n - 1)
  end
end

# *****************************
# Write a method reverse that accepts a string as a parameter and then returns the reverse of the string by reversing all letters and all words in the string.

# e.g. reverse("hello world") will return "dlrow olleh"

# Time complexity: O(n) (I think? I'm not sure on this.)
# Space complexity: O(n) where n is the length of the string
def reverse(s)
  return s if (s.length <= 1)
  return s[-1] + reverse(s[0..-2])

  # CHRIS: Here is the mess of commented out code I warned you about. I ended up figuring it out when doing the Exercism problem this weekend and was able to quickly convert that code to Ruby! :D :D :D Hooray!!

  # if s.length < 2
  #   return s
  # end

  # i = 0
  # j = 1
  # # until j = s.length
  # temp = s[s.length - j]
  # s[s.length - j] = s[i]
  # s[i] = temp
  # i += 1
  # j += 1
  # # end
  # return s
  #   if i != 0
  #   temp_string = ""
  #   i = s.length-1
  #   return {
  #     '#{temp_string}' + reverse temp_string.push(s.length-1)
  #     i -= 1
  #   }
  # end

  # temp = ""
  # if s.length == 0
  #   return temp
  # else
  #   # i += 1
  #   return (temp.push(s[-1])
  #            s.pop
  #            reverse(s))
  # end

  # temp = s[s.length - 1]
  # s[s.length - 1] = s[0]
  # s[0] = temp
  # return s

end

# *****************************
# Write a method bunny that accepts an integer parameter n. N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).

# e.g. bunny(0) = 0
# e.g. bunny(1) = 2
# e.g. bunny(10) = 20

# Time complexity: ?
# Space complexity: ?

def reverse_inplace(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?

def bunny(n)
  raise NotImplementedError, "Method not implemented"
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
