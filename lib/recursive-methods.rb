# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the size of the input number
# Space complexity: O(n),  where n is the size of the input number
def factorial(n)

    if n < 0
        raise ArgumentError, "number can't be negative"
    end
    if n == 0 
        return 1
    end
    return n * factorial(n-1)
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n^2), where n is the length of the string
def reverse(s)
    if s.length <= 1
        return s 
    end
    return s[-1] << reverse(s[1..-2]) << s[0]
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def reverse_inplace(s)
   i = 0
   j = s.length - 1

   return reverse_helper(s, i, j)
end

def reverse_helper(s, i, j)
    if j <= i
        return s 
    end

    temp = s[i]
    s[i] = s[j]
    s[j] = temp
   return reverse_helper(s, i + 1, j - 1)
end

# Time complexity: O(n), where n is the input number
# Space complexity: O(n), where n is the input number
def bunny(n)
    if n == 0
        return 0
    end
    return 2 + bunny(n-1)
end

# Time complexity: O(n), where n is the size of the input string
# Space complexity: O(n), where n is the size of the input string
def nested(s)
    i = 0
    j = s.length - 1

    return nested_helper(s, i, j)
end

def nested_helper(s, i, j)
    if j < i
        return true
    end

    if s[i] == "(" && s[j] == ")"
        return nested_helper(s, i + 1, j - 1)
    else
        return false
    end

end

# Time complexity: O(n), where n is the length of the input array
# Space complexity: O(n), where n is the length of the input array
def search(array, value)
    if array == []
        return false
    end

    if array[0] == value
        return true
    end

    return search(array[1..-1], value)
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def is_palindrome(s)
    i = 0
    j = s.length - 1

    return is_palindrome_helper(s, i, j)
end

def is_palindrome_helper(s, i, j)
    if j <= i
        return true
    end
    if s[i] != s[j]
        return false
    else
        return is_palindrome_helper(s, i + 1, j - 1)
    end
end

# Time complexity: O(log10(n)), where n is the smallest input number
# Space complexity: O(log10(n)), where n is the smallest input number
def digit_match(n, m)
    if n < 1 || m < 1 
        return 0
    end
    if n % 10 == m % 10
        return 1 + digit_match(n/10, m/10)
    else
        return digit_match(n/10, m/10)
    end
end