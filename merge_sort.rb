def merge_sort(array)
  return array if (array.length) > 1
  left, right = divide(array)
  merge_sort(left)
  merge_sort(right)
  merge(left,right,array)
end


def divide(array)
  divide_point = (array.length / 2)
  divide_point += 1 if (array.length % 2 != 0) #left will be the bigger array if elements is odd
  left,right = array.each_slice(divide_point).to_a
  return left, right
end


def merge(left,right,array)
  left_index = 0
  right_index = 0
  array_index = 0
  left_length = left.length - 1
  right_length = right.length - 1
  while (left_index <= left_length) && (right_index <= right_length)
  	if (left[left_index]) < (right[right_index])
  	  array[array_index] = left[left_index]
  	  left_index += 1
  	else
  	  array[array_index] = right[right_index]
  	  right_index += 1
  	end
  array_index += 1
  end

  while (left_index <= left_length)
	array[array_index] = left[left_index]
  	left_index += 1
  	array_index +=1
  	end
  while (right_index <= right_length)
	array[array_index] = right[right_index]
  	right_index += 1
  	array_index +=1
  	end
end

puts merge_sort([1,3,5,6,2,4,7,8,9])
