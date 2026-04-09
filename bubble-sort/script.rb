def bubble_sort(array)
  iteration = 0

  while iteration < array.length - 1 do
    index = 0
    length = array.length - 1 - iteration
    
    while index < length do
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      index += 1
    end
    iteration += 1
  end
  array
end

# not quite the true bubble sort algorithm, but still wanted to try it
# highest value still "bubbles" but more than two values can be compared at once
# the grouped numbers can be reversed as they will only be grouped in a strictly descending order
# breaks loop if there are no grouped numbers

def bubble_sort2(array)
  loop do
    array = array.chunk_while{ |i, k| i > k }.to_a
    break array.flatten if array.all?{ |e| e.length == 1 }
    array = array.map(&:reverse).flatten
  end
end

array = [19, 17, 14, 10, 8, 3]
array2 = [40, 10, 7, 11, 1, 15]

p bubble_sort(array)
p bubble_sort2(array2)
