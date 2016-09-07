def merge_sort(array)
left, right = divide(array)
end

def divide(array)
  divide_point = (array.length / 2)
  divide_point += 1 if (array.length % 2 != 0) #left will be the bigger array if elements is odd
  left,right = array.each_slice(divide_point).to_a
  return left, right
end

def sort
end

def combine
end