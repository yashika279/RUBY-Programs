def next_greater_elements(arr)

  result = Array.new(arr.length, -1)
  stack = []

  (arr.length - 1).downto(0) do |i|

    # Remove smaller elements
    while !stack.empty? && stack[-1] <= arr[i]
      stack.pop
    end

    # Top of stack is next greater
    result[i] = stack[-1] unless stack.empty? 

    # Push current element
    stack.push(arr[i]) 
  end

  result
end

arr = [4, 5, 2, 10, 8]

p next_greater_elements(arr)