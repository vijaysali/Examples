# Binary search: (works with sorted array) Complexity O(log n)
# test-case: input = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
# binary_search(input, 40) => true
# binary_search(input, -25) => false

def binary_search(input, key, from = 0 , to = (input.size - 1))
  mid_index = (from + to) / 2
  p [:index, mid_index, f: from, t: to, val: input[mid_index]]
  return input[mid_index] if input[mid_index]  == key
  return false if from > to

  if key > input[mid_index]
    return binary_search(input, key, mid_index + 1, to)
  elsif key < input[mid_index]
    return binary_search(input, key, from, mid_index - 1)
  end
    return false
end
