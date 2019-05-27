# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n == 0
        return 1
    else
        return n * (factorial(n - 1))
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    end
    reversed_s = reverse(s[1..-1])
    reversed_s += s[0]
    reversed_s
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    i = 0
    k = s.length - 1
 
    return helper(s, i, j)
 end
 
 def helper(s, i, k)
     if k <= i
         return s 
     end
 
     temp = s[i]
     s[i] = s[k]
     s[k] = temp
    return helper(s, i + 1, k - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else return 2 + bunny(n-1)
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